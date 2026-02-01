# Marketi
[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/mahmoudkamal14/marketi)

## 📝 Description

Marketi is a complete, cross-platform e-commerce application built with Flutter. It provides a seamless shopping experience, allowing users to browse products, manage their cart and favorites, and handle their user profile. The app is designed with a clean architecture, ensuring scalability and maintainability.

## ✨ Features

-   **User Authentication:** Secure sign-up, login, and logout functionality.
-   **Onboarding:** A smooth introduction for first-time users.
-   **Dynamic Home Screen:** Features an image banner carousel, product categories, and a shoppable grid of all products.
-   **Product Catalog:**
    -   View products by category.
    -   Detailed product pages with multiple images, descriptions, and pricing.
-   **Shopping Cart:** Add, remove, and manage items in the shopping cart.
-   **Favorites:** Add products to a personal wishlist for later viewing.
-   **Profile Management:** Users can view and update their personal information and change their password.
-   **Responsive UI:** Adapts to different screen sizes using `flutter_screenutil`.
-   **Smooth UI/UX:** Enhanced with shimmer loading effects and intuitive navigation.

## 📸 Screenshots

### Splash & Onboarding
<p float="left">
  <img src="https://github.com/user-attachments/assets/79359a74-cf5e-4ef8-83ca-47a4cde5eb70" alt="Splash Screen" width="200"/>
  <img src="https://github.com/user-attachments/assets/8b101124-4b66-4063-94d3-e8876aaa3092" alt="Onboarding 1 Screen" width="200"/>
  <img src="https://github.com/user-attachments/assets/46a1882e-69b7-4ecf-9ef4-e236ea4162bc" alt="Onboarding 2 Screen" width="200"/>
</p>

### Authentication
<p float="left">
  <img src="https://github.com/user-attachments/assets/7c1ed801-4c38-4e87-bf4a-68e92a0177b5" alt="Login Screen" width="200"/>
  <img src="https://github.com/user-attachments/assets/d595a7be-bbe5-42f9-822d-95af3a53fd2b" alt="Register Screen" width="200"/>
  <img src="https://github.com/user-attachments/assets/f64a4dbc-c7af-462a-965b-9c0fccdf2a3b" alt="Verification Code Screen" width="200"/>
</p>

### Main Application
<p float="left">
  <img src="https://github.com/user-attachments/assets/70154c6c-ad62-493a-90b0-6a499abad333" alt="Home Screen" width="200"/>
  <img src="https://github.com/user-attachments/assets/1f9b0425-699c-4785-b7d7-df114a239d38" alt="Category Screen" width="200"/>
  <img src="https://github.com/user-attachments/assets/49343f91-951e-4c20-812f-78270008fc47" alt="Product Details" width="200"/>
  <img src="https://github.com/user-attachments/assets/e6ad4b92-a4e8-46c0-abee-9469ef0ed0b3" alt="Favorites Screen" width="200"/>
</p>

### Profile Management
<p float="left">
  <img src="https://github.com/user-attachments/assets/b8dd1025-a7fd-4722-8eb7-f45d9dba1e4c" alt="User Profile Screen" width="200"/>
  <img src="https://github.com/user-attachments/assets/3d5fee9f-42a6-4411-a04e-ae80d643488c" alt="User Profile Update" width="200"/>
  <img src="https://github.com/user-attachments/assets/2adf9c44-6edc-4701-9885-9463978e268c" alt="Change Password Screen" width="200"/>
</p>

## 🛠️ Architecture

This project follows a clean architecture approach, separating the code into three main layers:

-   `lib/core`: Contains shared application logic, including routing, dependency injection (`GetIt`), networking (`Dio`), theming, and common widgets.
-   `lib/features`: This directory is organized by application features (e.g., `auth`, `home`, `cart`). Each feature is a self-contained module.
-   **Feature Structure**: Inside each feature, the code is further divided into:
    -   **Data**: Contains data models, repository (data source abstraction), and API services (`Retrofit`).
    -   **Presentation**: Includes the user interface (screens and widgets) and state management logic (`Bloc`/`Cubit`).

## 💻 Technologies Used

-   **Framework**: Flutter
-   **Language**: Dart
-   **State Management**: `flutter_bloc` (Bloc/Cubit)
-   **Networking**: `dio`, `retrofit`, `pretty_dio_logger`
-   **Dependency Injection**: `get_it`
-   **Routing**: Custom `AppRouter`
-   **UI**: `flutter_screenutil`, `cached_network_image`, `shimmer`, `carousel_slider`, `smooth_page_indicator`
-   **Local Storage**: `shared_preferences`

## 🚀 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

-   Flutter SDK (v3.3.3 or higher)
-   Dart SDK
-   An IDE like Android Studio or VS Code

### Installation

1.  Clone the repository:
    ```sh
    git clone https://github.com/mahmoudkamal14/marketi.git
    ```
2.  Navigate to the project directory:
    ```sh
    cd marketi
    ```
3.  Install the dependencies:
    ```sh
    flutter pub get
    ```
4.  Run the code generation tool:
    ```sh
    dart run build_runner build
    ```
5.  Run the app:
    ```sh
    flutter run
    ```

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request
