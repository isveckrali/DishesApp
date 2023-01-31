//
//  HeaderView.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 30/01/2023.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    @State private var showHeadline: Bool = false
    
    var slideInAnimation: Animation{
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack{
            Image("dish-slice-1")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorYellowLight"))
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 6){
                    Text("Dishes")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    Text("Remember that grains are at the heart of many familiar dishes, such as granola, paella, biryani, risotto, salads and soups.")
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
            .background(Color("ColorBlackTransparentLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadline ? 75 : 200)
            .animation(slideInAnimation)
            .onAppear {
                self.showHeadline.toggle()
            }
        }
        .frame(width: 480, height: 480, alignment: .center)
    }
}

// MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
