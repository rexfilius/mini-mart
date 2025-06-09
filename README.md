# Mini Mart

Mini Mart is a Flutter application that allows users to browse a list of products, view detailed information, add products to a cart, and manage their selection. It uses Riverpod for state management, GoRouter for navigation, and Flutter ScreenUtil for responsive design.

## Features

* **Home / Product Listing**: Grid of product cards showing image, name, and price.
* **Product Details**: Detailed view with description bullets and an "Add to Cart" button. Adds to cart and shows a snack bar notification.
* **Shopping Cart**: List of added items, quantity controls, and remove buttons; displays subtotal, shipping, and total with a Checkout button.
* **Bottom Navigation**: Tabs for Home, Favorites, Cart (with dynamic badge count), and Profile.
* **Responsive UI**: Uses `flutter_screenutil` for adaptive sizing across devices.
* **Overlay Notifications**: Leverages `overlay_support` to surface temporary messages.

## Screens

1. **Splash Screen** (`SplashScreen`)
2. **Home Screen** (`HomeScreen`)
3. **Product Detail Screen** (`ProductDetailScreen`)
4. **Cart Screen** (`CartScreen`)
5. **Favorites Screen** (`FavoritesScreen`) – placeholder UI
6. **Profile Screen** (`ProfileScreen`) – placeholder UI

## Project Structure

```
lib/
├─ main.dart             # App entry point
├─ app.dart              # Root widget with Theme and Router
├─ config/
│  ├─ routing/           # GoRouter routes & branches
│  └─ theme/             # Colors, AppBars, ScreenSizing
├─ modules/
│  ├─ splash/            # SplashScreen
│  ├─ nav_screen/        # Bottom nav shell (NavScreen)
│  ├─ home/
│  │  ├─ model/          # Product data & demo list
│  │  ├─ notifier/       # Riverpod providers for selection
│  │  └─ ui/             # HomeScreen, ProductCard, ProductDetail
│  ├─ cart/
│  │  ├─ model/          # CartItem & CartScreenModel
│  │  ├─ notifier/       # CartScreenNotifier provider
│  │  └─ ui/             # CartScreen, CartItemCard, BottomWidget
│  ├─ favorites/         # FavoritesScreen
│  └─ profile/           # ProfileScreen
assets/
├─ png/                  # Product images
├─ svg/                  # Icon assets
└─ fonts/                # IBMPlexSans font files
```

## Dependencies

* `flutter_riverpod`
* `go_router`
* `flutter_screenutil`
* `overlay_support`
* `equatable`
* `flutter_svg`
* `cupertino_icons`

See `pubspec.yaml` for full versions.

## Getting Started

1. **Clone the repository**

   ```bash
   git clone https://github.com/rexfilius/mini-mart.git
   cd mini-mart
   ```
2. **Install packages**

   ```bash
   flutter pub get
   ```
3. **Run the app**

   ```bash
   flutter run
   ```

## Assets

Ensure the following asset folders are populated and declared in `pubspec.yaml`:

* `assets/png/`
* `assets/svg/`
* `assets/fonts/` (IBMPlexSans family)

## Future Improvements

* **Persistent Storage**: Integrate Hive or SQLite for offline cart persistence.
* **Favorites & Profile**: Implement functionality behind Favorites and Profile screens.
* **Backend Integration**: Connect to an API for dynamic product data.
* **Testing**: Add unit and widget tests for business logic and UI.
* **CI/CD**: Automate build & deployment pipelines.

## Contributing

Pull requests are welcome! Please adhere to the existing code style and add tests for new features.

## License

This project is licensed under the MIT License.

