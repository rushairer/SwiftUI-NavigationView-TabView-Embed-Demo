//
//  TestApp.swift
//  Test
//
//  Created by Abenx on 2021/4/24.
//

import SwiftUI

@main
struct TestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
