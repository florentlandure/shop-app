//
//  ContentView.swift
//  Shop
//
//  Created by Florent Landuré on 29/08/2020.
//  Copyright © 2020 Florent Landuré. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            SearchView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        .imageScale(.large)
                    }
                }
                .tag(0)
            Text("Cart view")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "cart")
                        .imageScale(.large)
                    }
                }
                .tag(1)
            Text("Account view")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                            .imageScale(.large)
                    }
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
