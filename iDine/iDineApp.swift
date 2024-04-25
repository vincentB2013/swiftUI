//
//  iDineApp.swift
//  iDine
//
//  Created by 838410 on 05/03/2024.
//

import SwiftUI

@main

struct iDineApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
