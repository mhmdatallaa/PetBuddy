//
//  PetBuddyApp.swift
//  PetBuddy
//
//  Created by Mohamed Atallah on 12/06/2024.
//

import SwiftUI
import Swifter

@main
struct PetBuddyApp: App {
    
    let server: HttpServer = {
        let server = HttpServer()
        // We use a different port so unit tests will still work
        try? server.start(8081)
        server.GET["/api/v1/posts"] = { _ in HttpResponse.ok(.text(JsonData.goodFeed)) }
        server.POST["/api/v1/user"] = { _ in HttpResponse.ok(.text(JsonData.goodSignUp)) }
        return server
    }()
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
