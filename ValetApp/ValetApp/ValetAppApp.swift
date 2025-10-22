import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
//
//@main
//struct YourApp: App {
//  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//   var authViewModel = AuthViewModel()
//  var body: some Scene {
//    WindowGroup {
//      NavigationView {
//          LoginView().environmentObject(authViewModel)
//      }
//    }
//  }
//}
@main
struct YourApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var authViewModel = AuthViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                if authViewModel.isLoggedIn {
                    HomeView()
                        .environmentObject(authViewModel)
                } else {
                    LoginView()
                        .environmentObject(authViewModel)
                }
            }
        }
    }
}
