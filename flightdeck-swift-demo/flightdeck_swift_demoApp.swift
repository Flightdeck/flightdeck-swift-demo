//
//  Flightdeck_DemoApp.swift
//  Flightdeck Demo
//
//  Created by Jasper van Nistelrooy on 12/01/2023.
//

import SwiftUI

@main
struct Flightdeck_DemoApp: App {
    init() {
        Flightdeck.initialize(
            projectId: "flightdeck_demo",
            projectToken: "p.eyJ1IjogIjVhZjBlOWZlLTA3MTEtNDNiMi1hZmNkLTY3MzZhYjBhM2Q5MiIsICJpZCI6ICI1NGZiYzYwNi1mMGRmLTQ1MjctOTYwZi1lMmRlYWQ3ZjRhZTkifQ.cYVMYgDu3mGU-5Utka95VWXFSx6wuPKNYeacfSUtW8Y",
            addEventMetadata: true,
            trackAutomaticEvents: true,
            trackUniqueEvents: true
        )
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
