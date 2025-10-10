import UIKit
import CallKit
import PushKit

class ViewController: UIViewController, CXProviderDelegate, PKPushRegistryDelegate {
    private var callProvider: CXProvider!
    private var currentCallUUID: UUID?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a push registry object to request VoIP notifications
        let voipRegistry = PKPushRegistry(queue: DispatchQueue.main)
        voipRegistry.delegate = self
        voipRegistry.desiredPushTypes = [.voIP]
    }
    
    // ✅ FIXED: Correct method signature for receiving VoIP push
    func pushRegistry(_ registry: PKPushRegistry,
                      didReceiveIncomingPushWith payload: PKPushPayload,
                      for type: PKPushType,
                      completion: @escaping () -> Void) {
        
        // Setup CallKit configuration
        let callConfig = CXProviderConfiguration(localizedName: "NotesPro")
        callConfig.supportsVideo = true
        callConfig.includesCallsInRecents = true
        callConfig.ringtoneSound = "ES_CellRingtone23.mp3"
        
        // Create the provider and set delegate
        let callProvider = CXProvider(configuration: callConfig)
        callProvider.setDelegate(self, queue: nil)
        
        // Create call update with caller info
        let callUpdate = CXCallUpdate()
        callUpdate.remoteHandle = CXHandle(type: .generic, value: "Amos Gyamfi")
        callUpdate.hasVideo = true
        
        // Report new incoming call
        callProvider.reportNewIncomingCall(with: UUID(), update: callUpdate) { error in
            if let error = error {
                print("Error reporting incoming call: \(error.localizedDescription)")
            }
            completion()
        }
    }
    
    // Called when the app receives new VoIP credentials (token)
    func pushRegistry(_ registry: PKPushRegistry,
                      didUpdate pushCredentials: PKPushCredentials,
                      for type: PKPushType) {
        print("VoIP Token received:")
        let token = pushCredentials.token.map { String(format: "%02.2hhx", $0) }.joined()
        print(token)
    }
    
    // Required delegate method of CXProvider
    func providerDidReset(_ provider: CXProvider) {
        print("Call provider did reset")
    }
}
//}
//import UIKit
//import CallKit
//import PushKit
//
//class ViewController: UIViewController, CXProviderDelegate, PKPushRegistryDelegate {
//
//    // MARK: - Properties
//    private var callProvider: CXProvider!
//    private var currentCallUUID: UUID?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Setup CallKit provider configuration
//        let callConfig = CXProviderConfiguration(localizedName: "NotesPro")
//        callConfig.supportsVideo = true
//        callConfig.includesCallsInRecents = true
//        callConfig.ringtoneSound = "ES_CellRingtone23.mp3"
//
//        // Initialize CXProvider and set delegate
//        callProvider = CXProvider(configuration: callConfig)
//        callProvider.setDelegate(self, queue: nil)
//
//        // Setup VoIP push registry
//        let voipRegistry = PKPushRegistry(queue: DispatchQueue.main)
//        voipRegistry.delegate = self
//        voipRegistry.desiredPushTypes = [.voIP]
//    }
//
//    // MARK: - PKPushRegistryDelegate
//
//    func pushRegistry(_ registry: PKPushRegistry,
//                      didReceiveIncomingPushWith payload: PKPushPayload,
//                      for type: PKPushType,
//                      completion: @escaping () -> Void) {
//
//        // Generate a new UUID for the incoming call
//        let callUUID = UUID()
//        currentCallUUID = callUUID
//
//        // Create call update with caller info
//        let callUpdate = CXCallUpdate()
//        callUpdate.remoteHandle = CXHandle(type: .generic, value: "Amos Gyamfi")
//        callUpdate.hasVideo = true
//
//        // Report the new incoming call to CallKit
//        callProvider.reportNewIncomingCall(with: callUUID, update: callUpdate) { error in
//            if let error = error {
//                print("Error reporting incoming call: \(error.localizedDescription)")
//            }
//            completion()
//        }
//    }
//
//    func pushRegistry(_ registry: PKPushRegistry,
//                      didUpdate pushCredentials: PKPushCredentials,
//                      for type: PKPushType) {
//        let token = pushCredentials.token.map { String(format: "%02.2hhx", $0) }.joined()
//        print("VoIP Token received: \(token)")
//    }
//
//    // MARK: - CXProviderDelegate
//
//    func providerDidReset(_ provider: CXProvider) {
//        print("Call provider did reset")
//        currentCallUUID = nil
//    }
//
//    // Called when user answers the call (Accept)
//    func provider(_ provider: CXProvider, perform action: CXAnswerCallAction) {
//        print("Call accepted")
//
//        // Here, add your code to start the call or connect the call
//
//        action.fulfill()  // Tell the system the action was handled successfully
//    }
//
//    // Called when user ends the call (Decline or hang up)
//    func provider(_ provider: CXProvider, perform action: CXEndCallAction) {
//        print("Call ended or declined")
//
//        // Add your cleanup code here, e.g. disconnect call session
//
//        action.fulfill()
//        currentCallUUID = nil
//    }
//
//    // Optional: Handle mute/unmute or other actions if needed
//
//}
