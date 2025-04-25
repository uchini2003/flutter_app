## Project Overview

This project is developed according to the Domain-Driven Design (DDD) principles using Flutter and Riverpod for state management. This architecture is designed to create a maintainable, scalable, and testable application by separating problems into well-defined layers.

## How the App is Organized

### Application Layer

Connects the domain to the UI and handles the app logic. Controls how the app behaves. It listens to user actions and updates the app state.

**What’s inside**

- **State Modifiers**: Control the app’s state (loading, success, error)

- **Providers**: Riverpod’s way to inject dependencies

- **State Classes**: Hold the state data (made with freezed)

- **Authentication**: Controls login logic

- **AppStateNotifier**: Keeps track of the main app state (user logged in or not)

- **AuthenticationNotifier**: Handles login/logout

- **FailureNotifier**: Tracks errors

- **InternetConnectivityNotifier**: Checks internet status

- **Core/failure**: Handles app errors

- **Internet connectivity/**: Checks if we are online

This part listens for actions and tells the app what to do.

### Domain Layer

Holds the core logic, data models, and rules for how things should work. Doesn’t know anything about Flutter UIs or APIs.

**What’s inside**

- **Value Objects**: Check and hold special data like email or phone numbers

- **Entities**: Main items like Product

- **Failures**: Different types of errors like network errors or validation errors

- **value\_objects.dart**: Rules for data (like valid email or password)

- **login\_request.dart**: Data sent to log in

- **product.dart**: Information about a product

- **i\_authentication\_repository.dart**: Interface that says what login should do

This part is reusable and doesn’t change often. This layer only uses pure Dart code, no Flutter stuff. It also uses a library called `dartz` for smart error handling.

### Infrastructure

This part talks to the internet, local storage, external services, and real systems like Firebase or a server, internet check, shared preferences.

**What’s inside**

- **Repositories**: Actual code that fetches data (like API calls)

- **DTOs**: Translates data from API into your app format

- **API Helpers**: Makes API calls easier

- **Local Storage**: Stores data locally (like tokens)

- **authentication\_repository.dart**: Sends login request

- **login\_response\_dto.dart**: Gets data from API and turns it into Dart

- **api\_helper.dart**: Helps make network calls

- **local\_repository.dart**: Stores small data locally (like tokens)

Gives real data to the app. `dio` is used for making HTTP requests and `flutter_secure_storage` to store data like tokens safely.

### Presentation

This is the user interface, what the user sees and interacts with.

**What’s inside**

- **Pages**: Full screens (login page, home page)

- **Widgets**: Reusable UI parts (login form)

- **Routes**: How you move between pages

- **Styles and Constants**: Colors, fonts etc

- **login\_page.dart**: User login screen

- **home\_page.dart**: Main dashboard

- **navbar\_page.dart**: Bottom navigation bar

- **custom\_textfield.dart**: A styled input box

- **featured\_products.dart**: UI card showing products

Users interact with this part directly. `auto_route` is used for easy navigation. `flutter_hooks` and `riverpod` for state management. `flutter_screenutil` for making the app responsive.

### Utils

Helper tools used throughout the app.

**What’s inside**

- **AppInfo**: Gets info about the app/device
- **FailureUtils**: Converts error types to user-friendly messages
- **LogUtils**: For printing debug codes
- **StringExtensions**: Handy string functions

### Login Process

- User fills login form
- Application Layer calls the login function
- Infrastructure Layer makes an API call to the server
- Domain Layer checks if the response is valid and returns success or failure
- Based on result, the app shows an error or moves to the home page

### Error Handling Process

- Typed errors: `NetworkFailure`, `AuthenticationFailure`
- `Either` Type: `Either<Failure, Success>`
- `Option` Type: For values that might be missing
- `Failure State`: Central place that keeps track of app errors

### Extra

- The project uses `freezed` for data classes and states
- `Riverpod` is used to manage app state and dependencies

Riverpod gives:

- Dependency Injection: Easily provide and access services (like a repo)

- State Management: Controls app state (loading, success, error)

- Reactive UI: UI updates automatically when data changes

- `StateNotifierProvider`: For managing complex state

- `Provider`: For simple values

- `ref.watch` and `ref.listen`: To watch for changes

- Error handling is separated into reusable parts

- All real-world things (API, storage) are kept away from logic and UI

