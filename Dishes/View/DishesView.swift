//
//  DishView.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 27/01/2023.
//

import SwiftUI

struct DishesView: View {
    // MARK: - PROPERTIES
    
    @State private var pulsateAnimation: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack{
            Spacer()
            Image("dish")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            VStack{
                Text("Dishes".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                Text("""
Reserve 2 tablespoons of the coconut milk in a small bowl, then pour the rest of the can into a small saucepan.
Add the agave nectar and cook over medium heat until the coconut milk is smooth and any solids have melted, about 2 minutes.
""")
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorYellowLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, maxHeight: 120)
            }
            .padding()
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.pulsateAnimation.toggle()
        }
            
    }
        
}

// MARK: - PREVIEW
struct DishView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewDevice("iPhone 11 Pro")
           // .environment(\.colorScheme, .dark)
    }
}
