//
//  secondList.swift
//  bankAccount
//
//  Created by Артём Рябенко on 10.07.2022.
//

import SwiftUI

struct secondList: View {
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

struct secondList_Previews: PreviewProvider {
    static var previews: some View {
        secondList()
    }
}
