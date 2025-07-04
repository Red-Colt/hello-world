import SwiftUI
import MapKit

struct ContentView: View {
    @EnvironmentObject var locationManager: LocationManager
    @EnvironmentObject var service: FriendLocationService

    var body: some View {
        ZStack {
            Map(coordinateRegion: $locationManager.region, showsUserLocation: true, annotationItems: service.friends) { friend in
                MapMarker(coordinate: friend.coordinate, tint: .blue)
            }
            .ignoresSafeArea()

            VStack {
                HStack {
                    Text("Your location: \(locationManager.lastLocation?.coordinate.latitude ?? 0), \(locationManager.lastLocation?.coordinate.longitude ?? 0)")
                        .padding()
                    Spacer()
                }
                Spacer()
            }
        }
        .onAppear {
            locationManager.requestPermission()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LocationManager())
            .environmentObject(FriendLocationService())
    }
}
