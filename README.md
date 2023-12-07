# Tap Roulette

Tap into your luck!


### iOS
https://github.com/Michelphoenix98/tap_roulette/assets/40787439/b51f396b-148b-414a-b365-8faa28412a36


### Android
https://github.com/Michelphoenix98/tap_roulette/assets/40787439/e6a09a51-8fbb-47b9-af22-d73db6b88f6c

## Overview
Tap Roulette is a Flutter project that offers a simple yet engaging game where users tap to match a randomly generated number with the seconds of the current timestamp. The project follows a code architecture similar to that of clean code, emphasizing the separation of concerns and maintaining a layered approach.

## File Structure
The project's file structure is organized by features, promoting maintainability and readability. Instead of a common bloc, repository, and models folder, features are grouped into separate layers, including repository, blocs, and views. A shared app folder contains repositories and utilities common to all features.

## Layers
### Repository Layer:

BaseRepository is an abstraction that all feature repositories implement.
HiveRepository is the implementation of the base repository, offering methods for data manipulation and triggering events.

### Bloc Layer:

Dedicated blocs follow the Single Responsibility Principle.
home_fetch_cubit.dart fetches the total win count.
home_tap_cubit.dart manages core business logic, generating random numbers, and handling success states.

### Views Layer:

Neuromorphic design with shadows and lighting provides a visually appealing 3D effect.
Enhanced user experience includes confetti animations on success and temporary button disablement for better feedback.

## Core Principles

### Separation of Concerns:

Follows a clean code architecture with a clear separation between business logic and UI.

### S.O.L.I.D Principles:

Demonstrates the Single Responsibility Principle with dedicated blocs serving distinct purposes.

## Repositories

### CountRepositoryHive
`CountRepositoryHive` gets the total success count and updates the Hive database.

## Business Logic

### Home Fetch Cubit:

Fetches the total win count or success count.

### Home Tap Cubit:

Core business logic for generating a random number, comparing it to the seconds of the current timestamp, and emitting success or retry states.
Updates the count in the local Hive database and triggers an EntityChangedEvent, listened to by the Home Fetch Cubit.

## User Experience

### Neuromorphic Design:

Utilizes cleverly placed shadows and lighting for a 3D effect.

### Enhancements:

Displays confetti on successful matches.
Temporarily disables the button during success states for better user feedback.

### Attention to Detail:

Subtle animations and enhanced UX contribute to an overall polished experience.

## Packages

- Freezed
- BLoC
- Hive
- Confetti
- Path Provider

## Code Generation

This project uses build_runner to generate code. Run this command:
`flutter pub run build_runner build --delete-conflicting-outputs`

## About me
Michel Thomas
https://www.linkedin.com/in/michel98/


michelphoenix98@gmail.com
