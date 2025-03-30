# Random User Profile App

## Description
The **Random User Profile App** is a Flutter application that fetches random user profiles from the [Random User API](https://randomuser.me/) and displays them in a list. Users can tap on a profile to navigate to a details screen, where they can view additional information such as name, email, phone, and address. The app also includes a button to fetch a new random user.

## Features
- Fetches random user profiles from an API
- Displays user profiles in a **ListView**
- Allows navigation to a detailed profile screen
- Includes a refresh button to load a new user
- Uses smooth UI elements for a modern and clean look

## Flutter Concepts Practiced
✅ Fetching data from an API using **http** package  
✅ Displaying data using **ListView.builder**  
✅ Navigating between screens using **Navigator**  
✅ Using **GestureDetector** for user interactions  
✅ Styling UI with **Container, Column, Row, and SliverAppBar**  

## Installation & Setup
1. **Clone the repository**
   ```sh
   git clone https://github.com/yourusername/random-user-profile-app.git
   ```
2. **Navigate to the project folder**
   ```sh
   cd random-user-profile-app
   ```
3. **Install dependencies**
   ```sh
   flutter pub get
   ```
4. **Run the application**
   ```sh
   flutter run
   ```

## Dependencies Used
- `Dio` – For making API requests
- `flutter/material.dart` – Core UI components

## API Usage
The app fetches data from the Random User API endpoint:
```sh
https://randomuser.me/api/
```
Each request returns a randomly generated user with details such as:
- Name
- Email
- Phone Number
- Address
- Profile Picture


## Future Improvements
- Add caching to store previously fetched users
- Implement infinite scrolling for fetching multiple users
- Improve UI with animations and better transitions

## License
This project is licensed under the MIT License.

---
Developed by **[Your Name]**

