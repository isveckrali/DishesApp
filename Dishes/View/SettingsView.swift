//
//  SettingsView.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 27/01/2023.
//

import SwiftUI

struct SettingsView: View {
    // MARK: -PROPERTIES
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    // MARK: -BODY
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("dish")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                
                Text("Dishes".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorYellowAdaptive"))
            }
            .padding()
            
            Form{
                // MARK: - SECTION #1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification){
                        Text("Enable Notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Backgrond refresh")
                    }
                }
                
                // MARK: - SECTION #2
                Section(header: Text("Applications")) {
                    if enableNotification {
                        HStack{
                            Text("product").foregroundColor(.gray)
                            Spacer()
                            Text("Dish Recipes")
                        }
                        HStack{
                            Text("Compability").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack{
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Mehmet Can Seyhan")
                        }
                        HStack{
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Emir Bugra")
                        }
                        HStack{
                            Text("Website").foregroundColor(.gray)
                            Spacer()
                            Text("udemig.com")
                        }
                        HStack{
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack{
                            Text("Personal message").foregroundColor(.gray)
                            Spacer()
                            Text("Enjoy Coding!")
                        }
                    }
                    
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

// MARK: -PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
