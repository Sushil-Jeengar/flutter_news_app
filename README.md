# 📰 Flutter News App

A modern, responsive Flutter news application that provides real-time news updates across multiple categories. Built with clean architecture and beautiful UI design.

## ✨ Features

- **📱 Multi-Platform Support**: Runs on Android, iOS, Web, Windows, macOS, and Linux
- **🗂️ Category-based News**: Browse news by categories including:
  - India, Business, Sports, Technology
  - Health, Science, Entertainment, Politics
  - Travel, Food, Education
- **🎨 Modern UI Design**: 
  - Clean and intuitive interface
  - Horizontal featured news carousel
  - Vertical news list with cards
  - Smooth animations and loading indicators
- **🖼️ Image Caching**: Efficient image loading with cached network images
- **🔄 Pull-to-Refresh**: Easy news refresh functionality
- **📖 Article Details**: Full article view with detailed content
- **⚡ Fast Loading**: Optimized performance with proper state management
- **🎭 Beautiful Typography**: Google Fonts integration for enhanced readability

## 🏗️ Architecture

The app follows a clean architecture pattern with clear separation of concerns:

```
lib/
├── main.dart                 # App entry point
├── models/                   # Data models
│   └── top_news.dart        # News article data structure
├── news_repository/          # Data layer
│   └── new_repository.dart  # API calls and data fetching
├── view_model/              # Business logic layer
│   └── news_view_moodel.dart # News view model
└── view/                    # Presentation layer
    ├── splash_screen.dart   # App splash screen
    ├── home_screen.dart     # Main news listing screen
    └── article_detail_screen.dart # Article detail view
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.8.1 or higher)
- Dart SDK
- Android Studio / VS Code
- Android/iOS device or emulator

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/flutter_news_app.git
   cd flutter_news_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### API Integration

The app is already configured with NewsAPI for fetching real-time news data. The API integration is set up in `lib/news_repository/new_repository.dart` and ready to use.

## 📦 Dependencies

- **flutter**: Flutter SDK
- **cupertino_icons**: iOS-style icons
- **google_fonts**: Custom typography
- **flutter_spinkit**: Loading animations
- **http**: HTTP requests
- **cached_network_image**: Image caching and loading
- **intl**: Internationalization support

## 🎯 Key Features Explained

### Category Selection
- Horizontal scrollable category chips
- Real-time news filtering by category
- Visual feedback for selected category

### News Display
- **Featured Section**: Horizontal scrolling carousel of top news
- **News List**: Vertical list of all articles with thumbnails
- **Responsive Design**: Adapts to different screen sizes

### Article Detail View
- Full-screen article reading experience
- High-quality image display
- Complete article content
- Source attribution

## 🔧 Customization

### Adding New Categories
Edit the `categories` list in `lib/view/home_screen.dart`:
```dart
final List<String> categories = [
  'india', 'business', 'sports', 'technology',
  'health', 'science', 'entertainment', 'politics',
  'travel', 'food', 'education',
  'your_new_category', // Add your category here
];
```

### Styling
- Modify colors in `lib/main.dart` theme configuration
- Update fonts using Google Fonts
- Customize UI components in respective view files

## 🚀 Building for Production

### Android
```bash
flutter build apk --release
```

### iOS
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 🙏 Acknowledgments

- [NewsAPI](https://newsapi.org/) for providing the news data
- [Flutter](https://flutter.dev/) for the amazing framework
- [Google Fonts](https://fonts.google.com/) for beautiful typography
- [Flutter SpinKit](https://pub.dev/packages/flutter_spinkit) for loading animations


**Made with ❤️ using Flutter**
