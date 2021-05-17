//
//  FlexViewExampleApp.swift
//  Shared
//
//  Created by Brandon Erbschloe on 5/7/21.
//

import SwiftUI

@main
struct FlexViewExampleApp: App {
    
    let contentViewModel = ContentViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(model: contentViewModel)
        }
    }
}
