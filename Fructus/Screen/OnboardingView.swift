//
//  OnboardingView.swift
//  Fructus
//
//  Created by Amin on 24/06/2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruits = fruitsData
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) {fruit in
                FruitCardView(fruit: fruit)
            }
        } //: TabView
        .tabViewStyle(.page(indexDisplayMode: .always))
        .padding(.vertical,20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
