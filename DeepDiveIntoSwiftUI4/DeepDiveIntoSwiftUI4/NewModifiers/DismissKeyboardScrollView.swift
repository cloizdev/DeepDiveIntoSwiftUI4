//
//  IndicatorKeyboardScrollView.swift
//  SwiftUI4DeepDive
//
//  Created by Maxime Parmantier Cloiseau on 09/06/2022.
//

import SwiftUI

struct DismissKeyboardScrollView: View {
    @State private var text = ""

        var body: some View {
            ScrollView {
                TextField("Put some text here to open the keyboard ...", text: $text)
                    .textFieldStyle(.plain)
            }
            .padding()
            .scrollDismissesKeyboard(.never)
        }
}

struct DismissKeyboardScrollView_Previews: PreviewProvider {
    static var previews: some View {
        DismissKeyboardScrollView()
    }
}
