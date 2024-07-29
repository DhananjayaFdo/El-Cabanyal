```markdown
# El_Cabanyal

A Flutter application to display products with pagination using BLoC pattern.

## Table of Contents

- [Setup](#setup)
    - [Prerequisites](#prerequisites)
    - [Clone the Repository](#clone-the-repository)
    - [Install Dependencies](#install-dependencies)
    - [Run the App](#run-the-app)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Setup

### Prerequisites

Make sure you have the following software installed on your machine:

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

### Clone the Repository

Clone this repository to your local machine using the following command:

```sh
git clone https://github.com/yourusername/product_app.git
cd product_app
```

### Install Dependencies

Navigate to the project directory and install the necessary dependencies:

```sh
flutter pub get
```

### Run the App

Connect your device or start an emulator, and run the app using the following command:

```sh
flutter run
```

## Usage

Once the app is running, you can browse through the list of products. The app supports pagination,
allowing you to load more products as you scroll down.

## Contributing

Contributions are welcome! Please fork this repository and create a pull request with your changes.

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature-name`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/your-feature-name`)
5. Create a Pull Request

## Testing

No testing functions available currently in this project

## State Management

I used provider to manage state in this project

- [Provider](https://pub.dev/packages/provider)

### Provider

Provider is also a lightweight state management solution for Flutter applications. It leverages
InheritedWidgets to provide a flexible and efficient way to manage state across the widget tree.
With Provider, you can easily share and access state throughout your app, making it a popular choice
for managing state in Flutter projects. It simplifies the process of listening to changes in state
and updating the UI accordingly, promoting a clean and maintainable code structure.

```