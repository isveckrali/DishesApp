//
//  AppView.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 27/01/2023.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            DishesView()
            .tabItem {
                Image("tabicon-branch")
                Text("Dishes")
            }
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            ColdingStagesView()
                .tabItem {
                    Image("tabicon-dish")
                    Text("Colding")
                }
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
