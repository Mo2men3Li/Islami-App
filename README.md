# 🕌 Islami

A beautifully designed Islamic mobile app with an elegant dark and gold theme. Islami brings your daily spiritual essentials together in one place: the Quran, Hadith, Sebha (tasbeeh), Holy Quran Radio, prayer times, and Azkar.

> **Design:** [Islami on Figma](https://www.figma.com/design/rYIdiZRmbIhvvoGbLPQ9Al/Islami?node-id=150-30&p=f&t=cQ0K6gUAL8YdcHGg-0)

---

## ✨ Features

- 👋 **Onboarding** – A short welcome flow introducing the app
- 📖 **Quran** – Search surahs by name, see recently read surahs, and browse the full surah list with verse counts
- 📄 **Surah Details** – Read each surah verse by verse in a clear Arabic layout
- 📜 **Hadith** – Swipe through Hadith cards and read the full text of each one
- 📿 **Sebha** – Interactive digital tasbeeh with a bead ring and tap counter
- 📻 **Radio** – Stream Quran radio stations and reciters with play/pause and volume controls
- 🕰 **Prayer Times** – Daily prayer schedule with the next prayer highlighted
- 🌅 **Azkar** – Morning and evening Azkar
- 🌙 **Dark, gold-accented UI** – Comfortable reading with a consistent visual identity

---

## 📱 Screenshots

| Quran | Surah Details | Hadith | Sebha | Radio | Time |
|-------|---------------|--------|-------|-------|------|
| _add_ | _add_         | _add_  | _add_ | _add_ | _add_ |

Place your images in `assets/screenshots/` and link them here.

---

## 🛠 Tech Stack

- **Framework:** Flutter (Dart)
- **State management:** Provider
- **Local storage:** shared_preferences
- **Audio streaming:** just_audio

> Adjust this list to match your `pubspec.yaml`.

---

## 📂 Project Structure

```
lib/
├── core/            # Theme, colors, constants, utils
├── data/            # Models, services, repositories
├── features/
│   ├── onboarding/
│   ├── quran/
│   ├── hadith/
│   ├── sebha/
│   ├── radio/
│   └── time/        # Prayer times and Azkar
├── providers/       # State management
└── main.dart
assets/
├── images/
├── fonts/
└── data/
```

> Adjust to match your actual folders.

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.x or later)
- Android Studio or VS Code with the Flutter plugin
- An emulator or physical device

### Installation

```bash
git clone https://github.com/Mo2men3Li/islami.git
cd islami
flutter pub get
flutter run
```

### Build

```bash
flutter build apk --release
```

---

## 🎨 Design

All screens, colors, and typography follow the Figma design:
[Islami – Figma](https://www.figma.com/design/rYIdiZRmbIhvvoGbLPQ9Al/Islami?node-id=150-30&p=f&t=cQ0K6gUAL8YdcHGg-0)

---

## 🔮 Future Improvements

- Bookmarks and reading progress
- Offline audio downloads
- Prayer time notifications
- Qibla direction

---

## 👤 Author

**Mo'men Ali**
- GitHub: [Mo2men3Li](https://github.com/Mo2men3Li)

---

## 📄 License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
