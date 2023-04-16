//
//  PhysicalWellnessAppApp.swift
//  Shared
//
//  Created by Yash Jagtap 2024 on 3/4/23.
//

import SwiftUI

@main
struct PhysicalWellnessAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
