//
//  MainView.swift
//  iDine
//
//  Created by 838410 on 22/03/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
                    ContentView()
                        .tabItem {
                            Label("Menu", systemImage: "list.dash")
                        }

                    OrderView()
                        .tabItem {
                            Label("Order", systemImage: "square.and.pencil")
                        }
                }
    }
}

#Preview {
    MainView().environmentObject(Order())
}
