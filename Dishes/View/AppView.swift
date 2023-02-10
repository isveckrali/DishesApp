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
                Image(systemName: "arrow.triangle.branch")
                Text("Dishes")
            }
            ContentView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Recipes")
                }
            ColdingStagesView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Colding")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "slider.vertical.3")
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
