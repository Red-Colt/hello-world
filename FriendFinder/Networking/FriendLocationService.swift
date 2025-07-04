import Foundation
import MapKit

struct Friend: Identifiable, Codable {
    let id: String
    let coordinate: CLLocationCoordinate2D
}

class FriendLocationService: ObservableObject {
    @Published var friends: [Friend] = []
    private var timer: Timer?

    func start() {
        // Start periodic location updates
        timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
            self.fetchLocations()
            self.sendMyLocation()
        }
    }

    func sendMyLocation() {
        // TODO: Implement network call to send current location to backend
    }

    func fetchLocations() {
        // TODO: Implement network call to retrieve friends' locations from backend
    }
}
