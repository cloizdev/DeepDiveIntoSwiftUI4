//
//  ScrollIndicatorView.swift
//  SwiftUI4DeepDive
//
//  Created by Maxime Parmantier Cloiseau on 09/06/2022.
//

import SwiftUI

struct ScrollIndicatorView: View {
    var body: some View {
        ScrollView() {
            LazyVStack(spacing: 20) {
                ForEach(0..<2023) { year in
                    Text("YEAR \(year)")
                        .font(.headline)
                }
            }
        }
        .padding()
        .scrollIndicators(.hidden)
    }
}

struct ScrollIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollIndicatorView()
    }
}
