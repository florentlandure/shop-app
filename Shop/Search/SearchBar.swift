//
//  SearchBar.swift
//  Shop
//
//  Created by Florent Landuré on 29/08/2020.
//  Copyright © 2020 Florent Landuré. All rights reserved.
//

import SwiftUI

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

struct SearchBar_Previews: PreviewProvider {
    
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
