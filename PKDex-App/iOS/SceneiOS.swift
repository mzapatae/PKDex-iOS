//
//  SceneiOS.swift
//  PKDex (iOS)
//
//  Created by Miguel Angel on 30-04-21.
//

import Core
import SwiftUI
import Listing
import Resolver

struct SceneiOS: Scene {
    @Environment(\.scenePhase) private var phase
    @State private var sceneId = UUID()
    
    @StateObject private var sceneStore: SceneStore = Resolver.resolve()
    @StateObject private var listingStore: ListingStore = Resolver.resolve()

    var body: some Scene {
        WindowGroup {
            ListingUI().environmentObject(listingStore)
        }
        .onChange(of: phase) { newPhase in
            switch newPhase {
                case .active:
                    sceneStore.trigger(.sceneDidActive(id: sceneId))
                case .inactive:
                    sceneStore.trigger(.sceneDidInactive(id: sceneId))
                case .background:
                    sceneStore.trigger(.sceneDidBackground(id: sceneId))
                @unknown default:
                    print("Scene unkwnown") //TODO: Use logger for this
            }
        }
    }
    
}
