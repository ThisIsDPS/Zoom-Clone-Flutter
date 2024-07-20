# Zoom Clone
A Flutter-based Zoom clone application that integrates Firebase for authentication and Firestore for meeting history management. This project leverages the Jitsi Meet SDK for video conferencing, allowing users to start or join meetings, and manage their meeting history.

# Features
Google Sign-In: Secure authentication using Google accounts. <br/>
Real-Time Meeting Management: Start, join, and manage meetings using the Jitsi Meet SDK. <br/>
Meeting History: Track and view past meetings stored in Firestore. <br/>
User Profile: Display and manage user information with Firebase. <br/>
Cross-Platform: Developed for both iOS and Android using Flutter. <br/>

# Screenshots
<img width="327" alt="Screenshot 2024-07-20 at 3 21 04 PM" src="https://github.com/user-attachments/assets/538a4e3a-c50b-42ee-935f-1efeefb601ac"> <br/>
<img width="327" alt="Screenshot 2024-07-20 at 3 21 27 PM" src="https://github.com/user-attachments/assets/007bdeac-84ea-4735-b7c0-e0c0c0fb6845"> <br/>
<img width="327" alt="Screenshot 2024-07-20 at 3 21 34 PM" src="https://github.com/user-attachments/assets/fd820cc7-745d-4ce9-8020-891e2b2b6447"> <br/>
<img width="327" alt="Screenshot 2024-07-20 at 3 21 41 PM" src="https://github.com/user-attachments/assets/9073b283-2778-4e9a-ac46-d59053f92c52"> <br/>
<img width="327" alt="Screenshot 2024-07-20 at 3 21 44 PM" src="https://github.com/user-attachments/assets/b0b0686c-4713-4ace-a329-3f501a9b9bf7"> <br/>
<img width="327" alt="Screenshot 2024-07-20 at 3 21 55 PM" src="https://github.com/user-attachments/assets/70cab09e-8165-4d61-a13a-e8df2172fca2"> <br/>
<img width="327" alt="Screenshot 2024-07-20 at 3 22 02 PM" src="https://github.com/user-attachments/assets/2b1bd0f4-3f77-4181-9db1-b712a37133e3"> <br/>

# Technologies Used
Flutter: Cross-platform framework for building native interfaces. <br/>
Firebase: Provides authentication and Firestore database services. <br/>
Jitsi Meet SDK: Enables video conferencing capabilities. <br/>
Google Sign-In: Facilitates easy and secure sign-in using Google accounts. <br/>
Cloud Firestore: Stores meeting history and user data. <br/>

# Features and Functionality

# Authentication
Google Sign-In: Users can sign in with their Google account. New users are added to Firestore on their first login. <br/>

# Meeting Management
Create New Meeting: Generate a unique meeting room and join with default audio and video settings. <br/>
Join Meeting: Enter a meeting room ID to join an existing meeting. <br/>
Meeting Options: Toggle audio and video settings before joining. <br/>

# Meeting History
View History: A list of past meetings is displayed with details such as room name and join date. <br/>
Store History: Meeting details are stored in Firestore under the user's document. <br/>

# UI Components
Login Screen: Interface for Google Sign-In. <br/>
Home Screen: Provides navigation to different sections including meeting management and history. <br/>
Meeting Screen: Interface for creating or joining a meeting. <br/>
History Screen: Displays past meeting records. <br/>
Video Call Screen: Allows users to input meeting details and adjust audio/video settings before joining. <br/>

# Code Structure
lib/main.dart: Entry point of the application, sets up Firebase and routing. <br/>
lib/screens/: Contains various screen widgets such as login, home, and meeting screens. <br/>
lib/resources/: Includes methods for authentication, Firestore operations, and Jitsi Meet interactions. <br/>
lib/widgets/: Custom widgets used across the app. <br/>
pubspec.yaml: Defines project dependencies and configurations. <br/>
