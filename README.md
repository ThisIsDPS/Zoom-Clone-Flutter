# Zoom Clone
A Flutter-based Zoom clone application that integrates Firebase for authentication and Firestore for meeting history management. This project leverages the Jitsi Meet SDK for video conferencing, allowing users to start or join meetings, and manage their meeting history.

# Features
Google Sign-In: Secure authentication using Google accounts.
Real-Time Meeting Management: Start, join, and manage meetings using the Jitsi Meet SDK.
Meeting History: Track and view past meetings stored in Firestore.
User Profile: Display and manage user information with Firebase.
Cross-Platform: Developed for both iOS and Android using Flutter.

# Technologies Used
Flutter: Cross-platform framework for building native interfaces.
Firebase: Provides authentication and Firestore database services.
Jitsi Meet SDK: Enables video conferencing capabilities.
Google Sign-In: Facilitates easy and secure sign-in using Google accounts.
Cloud Firestore: Stores meeting history and user data.

# Features and Functionality

# Authentication
Google Sign-In: Users can sign in with their Google account. New users are added to Firestore on their first login.

# Meeting Management
Create New Meeting: Generate a unique meeting room and join with default audio and video settings.
Join Meeting: Enter a meeting room ID to join an existing meeting.
Meeting Options: Toggle audio and video settings before joining.

# Meeting History
View History: A list of past meetings is displayed with details such as room name and join date.
Store History: Meeting details are stored in Firestore under the user's document.

# UI Components
Login Screen: Interface for Google Sign-In.
Home Screen: Provides navigation to different sections including meeting management and history.
Meeting Screen: Interface for creating or joining a meeting.
History Screen: Displays past meeting records.
Video Call Screen: Allows users to input meeting details and adjust audio/video settings before joining.

# Code Structure
lib/main.dart: Entry point of the application, sets up Firebase and routing.
lib/screens/: Contains various screen widgets such as login, home, and meeting screens.
lib/resources/: Includes methods for authentication, Firestore operations, and Jitsi Meet interactions.
lib/widgets/: Custom widgets used across the app.
pubspec.yaml: Defines project dependencies and configurations.
