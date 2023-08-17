//
//  SettingsView.swift
//  Fructus
//
//  Created by Amin on 07/08/2023.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
//    @Environment(\.)
    @State var isRestart:Bool = false
    @AppStorage("isOnboarding") var isOnboarding:Bool = false
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
                    GroupBox {
                        Divider().padding(.vertical,4)
                        VStack {
                            Text("If you wish you can restart the application by toggle the switch in this box, that way it starts the onboarding proces and you will see the onboarding screen again")
                                .padding(.vertical,8)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            Toggle(isOn: $isOnboarding) {
                                if isOnboarding {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .padding()
                            .background{
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                            }

                        }
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }


                    
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
