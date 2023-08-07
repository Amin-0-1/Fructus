//
//  FruitDetailsView.swift
//  Fructus
//
//  Created by Amin on 26/07/2023.
//

import SwiftUI

struct FruitDetailsView: View {
    
    var fruit:Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    // MARK: - HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading,spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[0])
                        
                        // MARK: - HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading )
                        // MARK: - NEUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        // MARK: - SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[0])
                        // MARK: - DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        // MARK: - LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,10)
                    }
                    .navigationTitle(fruit.title)
                    .toolbar(.hidden)
                    .padding(.horizontal,20)
                    .frame(maxWidth: 620,alignment: .center)
                }
            } //: Scroll
            .edgesIgnoringSafeArea(.top)
            
        } //: NavigationView
    }
}

struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: fruitsData[0])
    }
}
