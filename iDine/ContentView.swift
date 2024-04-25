//
//  ContentView.swift
//  iDine
//
//  Created by 838410 on 05/03/2024.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        VStack {
            NavigationStack {
                List {
                    ForEach(menu) { section in
                        Section(section.name){
                            ForEach(section.items) { item in
                                NavigationLink {
                                    ItemDetail(item: item)
                                } label: {
                                    ItemRow(item: item)
                                }
                            }
                        }
                    }
                }
                .navigationDestination(for: MenuItem.self) { item in
                    ItemDetail(item: item)}
                .navigationTitle("Menu").listStyle(GroupedListStyle())
            }
        }
    }
}

#Preview {
    ContentView()
}
