//
//  GenderSegment.swift
//  Shop
//
//  Created by Florent Landuré on 29/08/2020.
//  Copyright © 2020 Florent Landuré. All rights reserved.
//

import SwiftUI

struct GenderSegment: View {
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

struct GenderSegment_Previews: PreviewProvider {
    static var previews: some View {
        GenderSegment(selected: .constant(0))
    }
}
