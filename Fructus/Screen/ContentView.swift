//
//  ContentView.swift
//  Fructus
//
//  Created by Amin on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSettings = false
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    
                    NavigationLink(destination: FruitDetailsView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical,4)
//                            .listRowSeparator(.hidden)
                    }
                }
            }
            
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }

            }
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        }//:Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .preferredColorScheme(.dark)
    }
}
