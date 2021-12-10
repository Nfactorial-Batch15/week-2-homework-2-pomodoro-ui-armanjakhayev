//
//  ScreenThird.swift
//  HW5
//
//  Created by Arman on 12/9/21.
//

import SwiftUI

struct ScreenThird: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                TabNavBreak()
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct TabNavBreak: View {
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    @State private var selectedTab: Int = 1// teaser of the week 3, just keep it simple for now
    var body: some View {
        TabView(selection: $selectedTab) {
            MainViewBreak()
                .tabItem {
                    Label("Main", systemImage: "house")
                }
                .tag(1)
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "slider.horizontal.3")
                }
                .tag(2)
            
            HistoryView()
                .tabItem {
                    Label("History", systemImage: "doc")
                }
                .tag(3)
        }
        .accentColor(.black)
    }
}

struct ScreenThird_Previews: PreviewProvider {
    static var previews: some View {
        ScreenThird()
    }
}
