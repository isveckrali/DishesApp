//
//  ContentView.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 27/01/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    let headers: [Header] = headersData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                VStack(alignment: .center, spacing: 20) {
                    // MARK: - HEADER
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(alignment: .top, spacing: 0){
                            ForEach(headers){ item in
                                HeaderView(header: item)
                            }
                        }
                    }
                    
                    // MARK: - FOODS
                    Text("Fruit Foods")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    FoodsView()
                        .frame(maxWidth: 640)
                    
                    // MARK: - FOOTER
                    Text("All about Dishes")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    Text("Each set serves four people and includes dinner plates, salad plates")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorYellowAdaptive"))
            .padding(8)
    }
}

// MARK: - FOOTER
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
