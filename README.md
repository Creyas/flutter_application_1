# Sandwich Shop App

A small Flutter app that demonstrates a simple sandwich-ordering UI and quantity counter. Users can toggle sandwich size (six‑inch / footlong), select a bread type, add order notes, and increment/decrement the item quantity with a configurable maximum.

Key features
- Increment / decrement sandwich quantity with max limit enforcement
- Choose bread type (enum-backed) via DropdownMenu
- Toggle sandwich size (six‑inch vs footlong)
- Add a free-text order note
- Widget tests included to validate UI behavior

---

## Prerequisites

- Flutter SDK (stable channel) — https://flutter.dev/docs/get-started/install  
- Dart (bundled with Flutter)  
- Git  
- A development editor (Visual Studio Code or Android Studio recommended)  
- A supported device or emulator (Android/iOS) or desktop target (Windows/Mac/Linux) if enabled

Note: Check pubspec.yaml for exact Flutter SDK constraints and any other packages used.

---

## Clone & Install

Open PowerShell or Command Prompt on Windows and run:

```powershell
git clone <repository-url> c:\sandwich_shop\flutter_application_1
cd c:\sandwich_shop\flutter_application_1
flutter pub get