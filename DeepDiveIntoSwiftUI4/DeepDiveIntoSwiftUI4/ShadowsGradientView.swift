//
//  ShadowsGradientView.swift
//  SwiftUI4DeepDive
//
//  Created by Cloiz on 08/06/2022.
//

import SwiftUI

struct ShadowsGradientView: View {
    @State private var isActive = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(
                .blue
                .gradient
                .shadow(isActive ? .inner(color: .black, radius: 20) : .drop(color: .black, radius: 20))
            )
            .frame(width: 250, height: 150)
            .onTapGesture {
                withAnimation {
                    isActive.toggle()
                }
            }
    }
}

struct ShadowsGradientView_Previews: PreviewProvider {
    static var previews: some View {
        ShadowsGradientView()
    }
}

