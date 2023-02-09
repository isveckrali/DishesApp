//
//  ColdingView.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 7.02.2023.
//

import SwiftUI

struct ColdingView: View {
    // MARK: - PROPERTIES
    @State private var slideInAnimation: Bool = false
    var colding: Colding
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image(colding.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
            .background(
                Circle()
                    .fill(Color("ColorYellowLight"))
                    .frame(width: 110, height: 110, alignment: .center)
            )
            .background(
                Circle()
                    .fill(Color("ColorAppearanceAdaptive"))
                    .frame(width: 120, height: 120, alignment: .center)
            )
            .zIndex(1)
            .animation(Animation.easeInOut(duration: 1))
            .offset(y: slideInAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10){
                // STAGE
                VStack(alignment: .center, spacing: 0) {
                    Text(colding.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    
                    Text("STAGE")
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.heavy)
                }
                .foregroundColor(Color("ColorYellowMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                
                // TITLE
                Text(colding.title)
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorYellowMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorYellowMedium")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                // DESCRIPTION
                Spacer()
                Text(colding.description)
                    .foregroundColor(Color("ColorYellowDark"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
                
                // COOLING
                Text(colding.ripeness.uppercased())
                    .foregroundColor(.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorYellowMedium"), Color("ColorYellowDark")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                // INSTRUCTIONS
                Text(colding.instruction)
                    .font(.footnote)
                    .foregroundColor(Color("ColorYellowLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorYellowLight"), Color("ColorYellowDark")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.slideInAnimation.toggle()
        }
    }
}

// MARK: - PREVIEW
struct ColdingView_Previews: PreviewProvider {
    static var previews: some View {
        ColdingView(colding: coldingData[1])
    }
}
