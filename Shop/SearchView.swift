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
                Segment(selected: $selectedSegment)
            }
            .padding(10)
            
            ScrollView {
                VStack {
                    Text("Categories view")
                    
                    if (selectedSegment == 0) {
                        Text("Women")
                    } else {
                        Text("Men")
                    }
                }
            }
            .padding(10)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color(.systemGray))
            TextField("Search", text: $text)
            
            if (!self.text.isEmpty) {
                Button(action: { self.text = "" }) {
                    Image(systemName: "xmark.circle.fill")
                    .foregroundColor(Color(.systemGray))
                }
            }
        }
        .padding(7)
        .background(Color(.systemGray6))
        .cornerRadius(8)
    }
}

struct Segment: View {
    @Binding var selected: NSInteger
    
    var body: some View {
        VStack {
            Picker(selection: $selected, label: Text("Gender")) {
                Text("Women").tag(0)
                Text("Men").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}
