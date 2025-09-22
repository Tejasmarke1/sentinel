// language_selection_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../locale_controller.dart';

class LanguageSelectionPage extends StatefulWidget {
  final String? currentLanguage;
  final Function(String)? onLanguageSelected;

  const LanguageSelectionPage({
    super.key,
    this.currentLanguage,
    this.onLanguageSelected,
  });

  @override
  State<LanguageSelectionPage> createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> 
    with TickerProviderStateMixin {
  
  String _selectedLanguage = 'en';
  late AnimationController _fadeController;
  late AnimationController _listController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _listAnimation;

  // Language data with native names and regions
  final List<LanguageOption> _languages = [
    LanguageOption(
      code: 'en',
      name: 'English',
      nativeName: 'English',
      region: 'International',
      icon: '🇬🇧',
      isDefault: true,
    ),
    LanguageOption(
      code: 'hi',
      name: 'Hindi',
      nativeName: 'हिन्दी',
      region: 'National Language',
      icon: '🇮🇳',
    ),
    
    // West Coast Languages
    LanguageOption(
      code: 'mr',
      name: 'Marathi',
      nativeName: 'मराठी',
      region: 'Maharashtra',
      icon: '🌊',
      category: 'West Coast',
    ),
    LanguageOption(
      code: 'gu',
      name: 'Gujarati',
      nativeName: 'ગુજરાતી',
      region: 'Gujarat',
      icon: '🌊',
      category: 'West Coast',
    ),
    LanguageOption(
      code: 'kn',
      name: 'Kannada',
      nativeName: 'ಕನ್ನಡ',
      region: 'Karnataka',
      icon: '🌊',
      category: 'West Coast',
    ),
    LanguageOption(
      code: 'ml',
      name: 'Malayalam',
      nativeName: 'മലയാളം',
      region: 'Kerala',
      icon: '🌊',
      category: 'West Coast',
    ),
    
    // East Coast Languages
    LanguageOption(
      code: 'te',
      name: 'Telugu',
      nativeName: 'తెలుగు',
      region: 'Andhra Pradesh, Telangana',
      icon: '🏖️',
      category: 'East Coast',
    ),
    LanguageOption(
      code: 'ta',
      name: 'Tamil',
      nativeName: 'தமிழ்',
      region: 'Tamil Nadu',
      icon: '🏖️',
      category: 'East Coast',
    ),
    LanguageOption(
      code: 'or',
      name: 'Odia',
      nativeName: 'ଓଡ଼ିଆ',
      region: 'Odisha',
      icon: '🏖️',
      category: 'East Coast',
    ),
    LanguageOption(
      code: 'bn',
      name: 'Bengali',
      nativeName: 'বাংলা',
      region: 'West Bengal',
      icon: '🏖️',
      category: 'East Coast',
    ),
    
    // Island Territories
    LanguageOption(
      code: 'as',
      name: 'Assamese',
      nativeName: 'অসমীয়া',
      region: 'Northeastern Coastal Areas',
      icon: '🏝️',
      category: 'Island Territories',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _selectedLanguage = widget.currentLanguage ?? 'en';
    _initializeAnimations();
  }

  void _initializeAnimations() {
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _listController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _fadeController, curve: Curves.easeInOut),
    );
    
    _listAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _listController, curve: Curves.easeOutCubic),
    );

    _fadeController.forward();
    Future.delayed(const Duration(milliseconds: 200), () {
      _listController.forward();
    });
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _listController.dispose();
    super.dispose();
  }

  void _selectLanguage(String languageCode) {
    setState(() {
      _selectedLanguage = languageCode;
    });
    HapticFeedback.lightImpact();
  }

  void _confirmSelection() {
    HapticFeedback.mediumImpact();
    final selected = _selectedLanguage;
    if (widget.onLanguageSelected != null) {
      widget.onLanguageSelected!(selected);
    }
    LocaleController.instance.setLocale(Locale(selected));
    Navigator.of(context).pushNamedAndRemoveUntil(
      '/login',
      (route) => false,
      arguments: {
        'languageCode': selected,
      },
    );
  }

  String _getLanguageName(String code) {
    return _languages.firstWhere((lang) => lang.code == code).name;
  }

  Map<String, List<LanguageOption>> _groupLanguagesByCategory() {
    final Map<String, List<LanguageOption>> grouped = {
      'Primary': [],
      'West Coast': [],
      'East Coast': [],
      'Island Territories': [],
    };

    for (final language in _languages) {
      if (language.isDefault || language.code == 'hi') {
        grouped['Primary']!.add(language);
      } else if (language.category != null) {
        grouped[language.category!]!.add(language);
      }
    }

    return grouped;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(),
              Expanded(
                child: _buildLanguageList(),
              ),
              _buildConfirmButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF3B82F6).withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back, color: Colors.white, size: 20),
                  padding: EdgeInsets.zero,
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  'Select Language',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.language,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Row(
            children: [
              SizedBox(width: 56), // Align with title
              Expanded(
                child: Text(
                  'Choose your preferred language for Sentinel',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageList() {
    final groupedLanguages = _groupLanguagesByCategory();
    
    return AnimatedBuilder(
      animation: _listAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, 20 * (1 - _listAnimation.value)),
          child: Opacity(
            opacity: _listAnimation.value,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Primary Languages (English & Hindi)
                  _buildLanguageSection('Primary Languages', groupedLanguages['Primary']!),
                  
                  const SizedBox(height: 24),
                  
                  // West Coast Languages
                  _buildLanguageSection('West Coast Languages', groupedLanguages['West Coast']!),
                  
                  const SizedBox(height: 24),
                  
                  // East Coast Languages
                  _buildLanguageSection('East Coast Languages', groupedLanguages['East Coast']!),
                  
                  const SizedBox(height: 24),
                  
                  // Island Territories
                  _buildLanguageSection('Island Territories', groupedLanguages['Island Territories']!),
                  
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLanguageSection(String title, List<LanguageOption> languages) {
    if (languages.isEmpty) return const SizedBox.shrink();
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F2937),
            ),
          ),
        ),
        const SizedBox(height: 12),
        ...languages.map((language) => _buildLanguageCard(language)),
      ],
    );
  }

  Widget _buildLanguageCard(LanguageOption language) {
    final isSelected = _selectedLanguage == language.code;
    
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? const Color(0xFF3B82F6) : Colors.grey[300]!,
          width: isSelected ? 2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: isSelected 
                ? const Color(0xFF3B82F6).withOpacity(0.1)
                : Colors.black.withOpacity(0.05),
            blurRadius: isSelected ? 12 : 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _selectLanguage(language.code),
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                // Language Icon/Flag
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: isSelected 
                        ? const Color(0xFF3B82F6).withOpacity(0.1)
                        : Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isSelected ? const Color(0xFF3B82F6) : Colors.transparent,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      language.icon,
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                
                const SizedBox(width: 16),
                
                // Language Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            language.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: isSelected ? const Color(0xFF3B82F6) : const Color(0xFF1F2937),
                            ),
                          ),
                          if (language.isDefault) ...[
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.green.withOpacity(0.3)),
                              ),
                              child: const Text(
                                'DEFAULT',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        language.nativeName,
                        style: TextStyle(
                          fontSize: 16,
                          color: isSelected ? const Color(0xFF3B82F6) : Colors.grey[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        language.region,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Selection Indicator
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? const Color(0xFF3B82F6) : Colors.transparent,
                    border: Border.all(
                      color: isSelected ? const Color(0xFF3B82F6) : Colors.grey[400]!,
                      width: 2,
                    ),
                  ),
                  child: isSelected
                      ? const Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildConfirmButton() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Selected Language Preview
          if (_selectedLanguage != 'en') ...[
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF3B82F6).withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFF3B82F6).withOpacity(0.3)),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: const Color(0xFF3B82F6),
                    size: 20,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Selected: ${_getLanguageName(_selectedLanguage)}',
                      style: const TextStyle(
                        color: Color(0xFF3B82F6),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    _languages.firstWhere((lang) => lang.code == _selectedLanguage).icon,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
          
          // Confirm Button
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: _confirmSelection,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3B82F6),
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                shadowColor: const Color(0xFF3B82F6).withOpacity(0.3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.check_circle, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'Confirm Language',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Language Option Model
class LanguageOption {
  final String code;
  final String name;
  final String nativeName;
  final String region;
  final String icon;
  final bool isDefault;
  final String? category;

  LanguageOption({
    required this.code,
    required this.name,
    required this.nativeName,
    required this.region,
    required this.icon,
    this.isDefault = false,
    this.category,
  });
}

// Usage Example Widget (for demonstration)
class LanguageSettingsDemo extends StatefulWidget {
  const LanguageSettingsDemo({super.key});

  @override
  State<LanguageSettingsDemo> createState() => _LanguageSettingsDemoState();
}

class _LanguageSettingsDemoState extends State<LanguageSettingsDemo> {
  String _currentLanguage = 'en';

  void _openLanguageSelection() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LanguageSelectionPage(
          currentLanguage: _currentLanguage,
          onLanguageSelected: (languageCode) {
            setState(() {
              _currentLanguage = languageCode;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Language Settings Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Language: $_currentLanguage',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _openLanguageSelection,
              child: const Text('Change Language'),
            ),
          ],
        ),
      ),
    );
  }
}