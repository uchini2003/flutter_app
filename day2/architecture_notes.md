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