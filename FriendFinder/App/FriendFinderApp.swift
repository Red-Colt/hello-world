import SwiftUI

@main
struct FriendFinderApp: App {
    @StateObject private var locationManager = LocationManager()
    @StateObject private var service = FriendLocationService()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(locationManager)
                .environmentObject(service)
                .onAppear {
                    service.start()
                }
        }
    }
}
