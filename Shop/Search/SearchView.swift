//
//  SearchView.swift
//  Shop
//
//  Created by Florent Landuré on 29/08/2020.
//  Copyright © 2020 Florent Landuré. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    @State private var selectedSegment = 0
    @State private var searchStr = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                SearchBar(text: $searchStr)
                GenderSegment(selected: $selectedSegment)
            }
            .padding(10)
            
            ScrollView {
                VStack {
                    
                    ForEach((0...2), id: \.self) { row in
                        HStack {
                            ForEach((0...1), id: \.self) { column in
                                
                                VStack (alignment: .leading) {
                                    Image("turtlerock")
                                        .frame(minWidth: 0)
                                        .frame(height: 175)
                                        .cornerRadius(10)
                                    
                                    Text("\(self.selectedSegment == 0 ? "Women" : "Men") \(row) / \(column)")
                                        .font(.headline)
                                        
                                }
                                
                            }
                        }
                        .padding(.bottom, 20)
                    }
                    
                    if (selectedSegment == 0) {
                        Text("Women")
                    } else {
                        Text("Men")
                    }
                }
                .padding(10)
            }
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
