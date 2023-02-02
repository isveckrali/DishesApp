//
//  FoodsView.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 1.02.2023.
//

import SwiftUI

struct FoodsView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            // 1st Column
            VStack(alignment: .leading, spacing: 4) {
                HStack{
                    Image("icon-baguette")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toast")
                }
                Divider()
                HStack{
                    Image("icon-pumpkin")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Pumpkin")
                }
                Divider()
                HStack{
                    Image("icon-broccoli")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Broccoli")
                }
                Divider()
                HStack{
                    Image("icon-baguette")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toast")
                }
            }
            // 2rd column
            VStack(alignment: .center, spacing: 16){
                HStack{
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(.title.weight(.ultraLight))
                    .imageScale(.large)
                
                HStack{
                    Divider()
                }
            }
            
            // 3rd column
            VStack(alignment: .trailing, spacing: 4) {
                HStack{
                    Text("Bread")
                    Spacer()
                    Image("icon-bread")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack{
                    Text("Corissant")
                    Spacer()
                    Image("icon-croissant")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack{
                    Text("Pizza")
                    Spacer()
                    Image("icon-pizza")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack{
                    Text("Sushi")
                    Spacer()
                    Image("icon-sushi")
                        .resizable()
                        .modifier(IconModifier())
                }
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
        
        
        
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

// MARK: - PREIVEW
struct FoodsView_Previews: PreviewProvider {
    static var previews: some View {
        FoodsView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
