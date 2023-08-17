//
//  SettingsView.swift
//  Fructus
//
//  Created by Amin on 07/08/2023.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox {
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center,spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are source for many essential nutrients, including potassium, dietary fiber, vitamens and much more.")
                                .font(.footnote )
                        }
                    } label: {
                        SettingsLabelView(labelText: "Fructos", labelImage: "info.circle")
                    }

                    // MARK: - Section 2
                     

                    
                    // MARK: - Section 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "John/Jane")
                        SettingsRowView(name: "Designer", content: "Rebert Patras")
                        SettingsRowView(name: "Compatibility",content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "twitter",linkLabel: "RoberPatras",linkDestination:"twitter.com/ropertpatras")
                        SettingsRowView(name: "SwiftUI",content: "2.0")
                        SettingsRowView(name: "Version",content: "1.1.0")
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }
                }
                .navigationTitle("Settings")
                .toolbar(content: {
                    Button {
                        dismiss.callAsFunction()
                    } label: {
                        Image(systemName: "xmark")
                    }
                })

                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
