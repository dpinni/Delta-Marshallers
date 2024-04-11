//
//  SeeUThere2_0App.swift
//  SeeUThere2.0
//
//  Created by Nia Michele Dicks on 3/5/24.
//

import SwiftUI

@main
struct SeeUThere2_0App: App {
    let userData = SharedData()
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(userData)
        }
    }
}
