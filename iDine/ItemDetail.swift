//
//  ItemDetail.swift
//  iDine
//
//  Created by 838410 on 12/03/2024.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    @EnvironmentObject var order: Order
    
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottomTrailing){
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description).padding()
            Button("Order This") {
                order.add(item: item)
            }
            .font(.title3)
            .buttonStyle(.borderedProminent)
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    
}

#Preview {
    NavigationStack {
        ItemDetail(item: MenuItem.example).environmentObject(Order())
    }
}
