import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var locationVM = LocationViewModel()
    @EnvironmentObject var authViewModel : AuthViewModel
    var body: some View {
        VStack(spacing: 16) {
            // Header
            Text("My Location Map")
                .font(.title2)
                .bold()
                .padding(.top)
            
            // Map with fixed height and rounded corners
            Map(coordinateRegion: $locationVM.region, showsUserLocation: true)
                .frame(height: 300)
                .cornerRadius(15)
                .shadow(radius: 5)
                .padding(.horizontal)
                .onAppear {
                    locationVM.requestPermission()
                }
                .alert("Location Permission Denied", isPresented: .constant(locationVM.authorizationStatus == .denied)) {
                    Button("OK", role: .cancel) { }
                } message: {
                    Text("Please enable location permissions in your device settings.")
                }
            
            // Display current coordinates
            VStack(spacing: 4) {
                Text("Latitude: \(locationVM.region.center.latitude, specifier: "%.5f")")
                Text("Longitude: \(locationVM.region.center.longitude, specifier: "%.5f")")
            }
            .font(.footnote)
            .foregroundColor(.secondary)
            
            // Zoom and Center Buttons
            HStack(spacing: 40) {
                Button {
                    locationVM.zoomIn()
                } label: {
                    Label("Zoom In", systemImage: "plus.magnifyingglass")
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(10)
                }

                Button {
                    locationVM.zoomOut()
                } label: {
                    Label("Zoom Out", systemImage: "minus.magnifyingglass")
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(10)
                }

                Button {
//                    locationVM.centerOnUser()
                } label: {
                    Label("Center", systemImage: "location.fill")
                        .padding()
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(10)
                }
            }
            .foregroundColor(.blue)
            Button("Sign Out"){
                authViewModel.signOut()
            }
            Spacer()
        }
    }
}
