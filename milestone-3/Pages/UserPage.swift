//
//  UserPage.swift
//  SeeUThere2.0
//
//  Created by Nia Michele Dicks on 3/5/24.
//

import SwiftUI

struct UserPage: View {
    @State private var progress = 0.0
    @EnvironmentObject var userData: SharedData
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("treeGreen"), Color(.white)]), startPoint: .top, endPoint: .bottom).opacity(0.5).ignoresSafeArea()
            
            
            Image("aaron-slaven")
                .resizable()
                .frame(width: 125, height: 125)
                .clipShape(Circle())
                    .frame(width: 1.0, height: 1.0)
                    .position(x: 85, y: 75)
            
            VStack (alignment: .leading, spacing: 6){
                Text("Welcome")
                    .font(.system(size: 25))
                    .foregroundColor(Color("forrestGreen"))
                
                Text(userData.userName)
                    .frame(width: 200, height: 75, alignment: .topLeading)
                    .scaledToFill()
                    //.font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color("forrestGreen"))
                
                Spacer()
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .position(x:355, y: 400)
            
                ProgressView(value: progress) { Text("Level \(progress)")}
                    .padding(15)
                    .cornerRadius(4)
                    .frame(width: 370, height: 100)
                    .position(x:200, y: 160)
                    .foregroundColor(Color("forrestGreen"))
                    .font(.system(size: 20))
                    
            
            Button(action: {}) {
                Image("scan_icon")
                    .resizable()
                    .frame(width: 60, height: 60)
                 }
                    .position(x: 335, y: 90)
            
            ScrollView{
                VStack (spacing: 20){
                    ForEach(0..<10){
                        Text("Event \($0 + 1)")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .cornerRadius(0.5)
                            .frame(width: 300, height: 200)
                            .background(Color("forrestGreen").opacity(0.5))
                    }
                }
            }
            .frame(height: 500, alignment: .center)
            .position(x: 200, y:440)
            
        }
        //.edgesIgnoringSafeArea(.top)
        
    }

}

struct UserPage_Previews: PreviewProvider{
    static var previews: some View{
        UserPage()
            .environmentObject(SharedData())
    }
}

