//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Amin on 08/08/2023.
//

import SwiftUI

struct SettingsRowView: View {
    var name:String
    var content:String? = nil
    var linkLabel:String? = nil
    var linkDestination:String? = nil
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if let content{
                    Text(content)
                }else if let linkLabel, let linkDestination{
                    Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "developer", content: "john / Jane")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
        
        SettingsRowView(name: "developer", linkLabel: "website",linkDestination: "www.google.com")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
