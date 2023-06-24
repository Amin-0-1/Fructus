//
//  FruitCardView.swift
//  Fructus
//
//  Created by Amin on 24/06/2023.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating:Bool = false
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                    .blur(radius: isAnimating ? 0 : 20)
                
                Text("Blueberries are sweet, nutritious and widly popular fruit all over the world.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
                
            } //: VStack
        } //: ZStack
        .onDisappear{
            isAnimating = false
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background{
            LinearGradient(colors: [
                .CustomColorBlueberryLight,
                .CustomColorBlueberryDark
            ],
                startPoint: .top,
                endPoint: .bottom
            )
        }
        .cornerRadius(20)
        .padding(.horizontal,20)
    }
}
// MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
