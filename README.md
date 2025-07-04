# FriendFinder

An iOS application that helps you locate your friends at a festival in real time. The app displays your position and your friends' positions on a map and updates them periodically.

## Features

- Uses CoreLocation to obtain precise user location.
- Shows user and friends on an interactive MapKit map.
- Periodically sends your location to a backend and fetches your friends' locations.
- Designed for iOS 15+ (compatible with iPhone 7 and iPhone 14).

## Project Structure

```
FriendFinder/
  App/
    FriendFinderApp.swift       # SwiftUI entry point
  Model/
    LocationManager.swift       # Handles location permissions and updates
  Networking/
    FriendLocationService.swift # Stub network layer for sharing location
  View/
    ContentView.swift           # Main interface with map
```

## Building the App

1. Open `FriendFinder.xcodeproj` or create a new Xcode project and add the files under `FriendFinder/`.
2. Ensure your deployment target is set to **iOS 15.0** or higher.
3. Add the following keys to your `Info.plist` to request location permissions:
   - `NSLocationWhenInUseUsageDescription`
   - `NSLocationAlwaysAndWhenInUseUsageDescription`
4. Replace the TODOs in `FriendLocationService.swift` with calls to your backend API for sharing and retrieving locations.
5. Build and run on your devices.

## Notes

This repository does not include server-side code. You will need a backend service to store each user's current location and provide it to other users. Firebase Realtime Database or a simple REST API are common approaches.
