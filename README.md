# 🌊 Coastal Sentinel: Citizen Hazard Reporting & Trust Analytics  

A mobile-first platform that empowers citizens to report coastal hazards (floods, cyclones, erosion, etc.) in real time. Built with **Flutter** and **Firebase**, the app enables multimedia hazard reporting, community validation, and trust scoring to ensure reliable data for disaster response agencies.  

---

## 📌 Problem Statement  

Coastal India faces frequent disasters such as **cyclones, floods, tsunamis, and erosion**. Local communities often witness these events first but lack a structured platform to **report hazards reliably**.  

The challenge lies in:  
- 🚩 Preventing false or duplicate reports.  
- 📍 Validating locations and timestamps of hazard events.  
- 📊 Ensuring data authenticity through **metadata & consensus checks**.  
- 📢 Delivering verified hazard reports to authorities quickly.  

---

## 🎯 Our Solution  

A **citizen reporting app** where users can:  
- Submit hazard reports with **text, location (GPS/map pin), images, and videos**.  
- Automatically attach **EXIF metadata** for authenticity checks.  
- Calculate a **Trust Score** for every report based on KYC, device attestation, EXIF integrity, spatial & temporal consensus, and user reputation.  
- View personal submissions and track their status.  
- Authorities and communities benefit from **clean, verified, real-time hazard data**.  

---

## 🛠️ System Architecture  

1. **Frontend (Flutter App)**  
   - User registration via **Firebase Authentication (OTP/SMS)**  
   - Report creation with **media uploads, map pinning, GPS location, description**  
   - User dashboard with **Home, Alerts, Reports, Profile** via bottom navigation bar  
   - Trust score calculated **on-device** for transparency  

2. **Backend (Firebase + Firestore)**  
   - Authentication & onboarding (name, email, mobile, location)  
   - Firestore database stores reports with media links + metadata  
   - Firebase Storage for media (images/videos)  
   - Cloud Functions (optional) for anomaly detection  

---

## ✨ Key Features  

- 📲 **Citizen Reporting**: Easy-to-use interface for reporting hazards.  
- 📍 **Live Location + Map Pinning**: User can fetch current location or drop a pin (like Ola/Uber).  
- 🖼️ **Media Uploads**: Attach photos and videos; EXIF metadata auto-extracted.  
- 🧾 **Trust Score Calculation**: Done **in-app**, giving transparency to the user.  
- 📊 **My Reports Page**: Track all past submissions.  
- 👤 **Profile Page**: Displays user KYC, trust score, and report stats.  
- 🚨 **Alerts Section**: Shows verified hazard alerts in the user’s region.  

---

## ⚡ Tech Stack  

- **Frontend**: Flutter (Dart)  
- **Authentication**: Firebase Auth (OTP-based)  
- **Database**: Firestore  
- **Storage**: Firebase Storage  
- **Trust Score Calculation**: Dart (in-app logic)  
- **Location Services**: Geolocator, Google Maps API  
- **Media Metadata**: exif package  

---

## 🚀 Future Scope  

- 🔗 **Integration with Sentinel NLP**: Merge with real-time social media analytics for a hybrid citizen + social signal system.  
- 🛰️ **Satellite & Weather API Integration**: Strengthen hazard validation.  
- 🤝 **Authority Dashboard**: Web-based dashboard for disaster response teams.  
- 🔐 **Advanced Media Forensics**: Deepfake detection for uploaded videos/images.  
- 📢 **Push Notifications**: Authority-to-citizen verified alerts.  

---

## 📊 Demo Flow  

1. User signs in via **OTP**.  
2. New users complete **onboarding (name, email, location, mobile)**.  
3. From home screen, user taps **“+” Floating Action Button** to create a hazard report.  
4. Adds **description, pins location, attaches media**.  
5. App extracts **EXIF + metadata**, calculates **trust score**, and submits to Firestore.  
6. Reports appear in **My Reports** & verified ones appear in **Alerts**.  

---

## 💡 Impact  

- ✅ **Empowers citizens** to be first responders.  
- ✅ **Reduces misinformation** with trust scoring & metadata checks.  
- ✅ **Improves disaster response** with structured, verified data.  
- ✅ **Multilingual & Mobile-First** for accessibility in coastal India.  
