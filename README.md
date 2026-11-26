# Group 10 – Bio Profile Mobile App

Mobile Communication Assignment – Group 10 (ITUM).

- **Active Integration Branch:** `bio-integration`
- **Members:** `23IT0542` – `23IT0550`

---

## Project Folder Structure (`bio-integration` branch)

```text
group10_bio_app/
├── assets/
│   └── images/
│       ├── Maleesha.jpeg              # Member profile photos go here
│       └── <YourName>.jpg             # Add your photo here
├── lib/
│   ├── main.dart                      # App entry point & Firebase setup
│   ├── firebase_options.dart          # Firebase configuration
│   └── screens/
│       ├── login_screen.dart          # Authentication screen
│       ├── home_screen.dart           # Main dashboard with member cards
│       └── bios/                      # Individual member bio screens
│           ├── bio_23it0548_maleesha.dart
│           └── bio_23itXXXX_yourname.dart   # Add your bio screen here
└── pubspec.yaml
