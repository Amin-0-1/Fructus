//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Amin on 07/08/2023.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText:String
    var labelImage:String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructos", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
