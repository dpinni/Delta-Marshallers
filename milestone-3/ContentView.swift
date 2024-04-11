//
//  ContentView.swift
//  SeeUThere2.0
//
//  Created by Nia Michele Dicks on 3/5/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 0
    
    var body: some View {
        NavigationStack{
            TabView(selection: $selectedTab) {
                    FriendsPage()
                        .tabItem() {
                            Image("searchIcon")
                            Text ("Search")
                        }.tag(0)
                    UserPage()
                        .tabItem() {
                            Image("icon")
                        }.tag(1)
                    
                    CalendarView()
                        .tabItem(){
                            Image("calendarIcon")
                            Text ("Calendar")
                        }.tag(2)
                }
                //.toolbarBackground(.hidden, for: .tabBar)
                .onAppear{
                    selectedTab = 1;
                }
        } .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
