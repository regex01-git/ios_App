import Foundation
import CoreLocation
import MapKit

class LocationViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()
    
    @Published var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.3349, longitude: -122.0090), // Default fallback
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    
    @Published var authorizationStatus: CLAuthorizationStatus = .notDetermined

    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.requestWhenInUseAuthorization()
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        let status = manager.authorizationStatus
        DispatchQueue.main.async {
            self.authorizationStatus = status
        }
        
        if status == .authorizedWhenInUse || status == .authorizedAlways {
            locationManager.startUpdatingLocation()
        } else {
            locationManager.stopUpdatingLocation()
            print("Location permission denied or restricted")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        DispatchQueue.main.async {
            self.region = MKCoordinateRegion(
                center: location.coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            )
            
            print("Updated location to: \(location.coordinate.latitude), \(location.coordinate.longitude)")
        }
    }
    
    func requestPermission() {
        locationManager.requestWhenInUseAuthorization()
    }
    
    // MARK: - Zoom Functions
    
    func zoomIn() {
        var newSpan = region.span
        newSpan.latitudeDelta /= 2
        newSpan.longitudeDelta /= 2
        
        // Limit the zoom-in level to prevent too much zooming
        newSpan.latitudeDelta = max(newSpan.latitudeDelta, 0.0005)
        newSpan.longitudeDelta = max(newSpan.longitudeDelta, 0.0005)
        
        region = MKCoordinateRegion(center: region.center, span: newSpan)
    }
    
    func zoomOut() {
        var newSpan = region.span
        newSpan.latitudeDelta *= 2
        newSpan.longitudeDelta *= 2
        
        // Limit the zoom-out level to prevent showing the whole world unnecessarily
        newSpan.latitudeDelta = min(newSpan.latitudeDelta, 180)
        newSpan.longitudeDelta = min(newSpan.longitudeDelta, 180)
        
        region = MKCoordinateRegion(center: region.center, span: newSpan)
    }
}
