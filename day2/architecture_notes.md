## Project Overview

This project is developed according to the Domain-Driven Design(DDD) principles using Flutter and Riverpod for state management. This architecture is designed to create a maintainable, scalable and testable application by seperating problems into well-defined layers. 

## How the App is Organized

- Application Layer 
Connects the domain to the UI and handles the app logic
controls how the app behaves.It listens to user actions and updates the app state.

What’s inside

State Motifiers : control the app’s state(loading, success, error)
Providers : Riverpod’s way to inject dependencies
State Classes : Hold the state data (made with freezed)

Authentication controls login logic
AppStateNotifier keeps track of the main app state (user logged in or not)
AuthenticationNotifier handles login/logout
FailureNotifier tracks errors
InternetConnectivityNotifier checks internet status
Core/failure - handles app errors
Internet connectivity/ checks if we are online

This part listens for actions and tells the app what to do

- Domain Layer
Holds the core logic,data models and rules for how things should work
doesn’t know anything about flutter UI’s or API’s

What’s inside 

Value Objects : Check and hold special data like email or phone numbers.
Entities : Main items like Product
Failures : Different. ypes of errors like network errors or validation errors

Value_objects.dart - rules for data (like valid email or password)
Login_request.dart - data sent to log in 
Product.dart - Information about a product
i_authentication repository.dart - interface that says what login should do

This part is reusable and doesn’t change often
This layer only users pure dart code, no flutter stuff.It also uses a library called dartz for smart error handling.

- Infrastructure

This part talks to the internet, local storage, external services and real systems like firebase or a server, internet check shared preferences.

What’s inside

Repositories : Actual code that fetches data (like API calls )
DTOs : Translates data from API into your app format
API Helpers : Makes API calls easier
Local Storage : Stores data locally (like tokens)

authentication_repository.dart - sends login request
Login_response_dto.dart - gets data from API and turns it into dart
Api_helper.dart - helps make network calls
Local_repository.dart - stores small data locally(like tokens)

Gives real data to the app
dio is used for making HTTP requests and flutter secure storage to store data like tokens safely.

- Presentation

This is the user interface, what the user sees and interacts with

What’s inside

Pages : Full Screens (login page, home page)
Widgets : Reusable UI parts (login form)
Routes : how you move between pages
Styles and constants : colors,fonts etc

Login_page.dart - user login screen
Home_page.dart - main dashboard
Navbar_page.dart -  bottom navigation bar
custom_textfield.dart - a styled input box
Featured_products.dart - UI card showing products

users interact with this part directly.
auto route is used for easy navigation
flutter hooks and riverpod for state management
flutter screeen util for making the app responsive