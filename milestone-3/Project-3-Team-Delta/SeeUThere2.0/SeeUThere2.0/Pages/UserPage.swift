//
//  UserPage.swift
//  SeeUThere2.0
//
//  Created by Nia Michele Dicks on 3/5/24.
//

import SwiftUI

struct UserPage: View {
    @State private var progress = 0.0
    @State private var isOverlay = false
    @State private var selectedImage: String?
    
    let imageNames = ["horsebackRiding", "paintingClass", "concert", "iceCream", "biking", "weightlifting"]
    let imageTitles = ["Horseback Riding", "Painting Class", "Concert", "Ice Cream", "Biking", "Weightlifting"]
    
    @EnvironmentObject var userData: SharedData
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("treeGreen"), Color(.white)]), startPoint: .top, endPoint: .bottom).opacity(0.5).ignoresSafeArea()
            
            
            Image("profileFiller")
                .resizable()
                .frame(width: 125, height: 125)
                .padding(20)
                .clipShape(Circle())
                    .frame(width: 1.0, height: 1.0)
                    .position(x: 85, y: 75)
                
            
            VStack (alignment: .leading, spacing: 6){
                Text("Welcome")
                    .font(.system(size: 25))
                    .foregroundColor(Color("forrestGreen"))
                
                Text(userData.userName)
                    .frame(width: 200, height: 75, alignment: .topLeading)
                    //.scaledToFill()
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color("forrestGreen"))
                
                Spacer()
                
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .position(x:355, y: 400)
            
            ProgressView(value: progress) { Text("Level \(String(format: "%.0f", progress))")}
                    .padding(15)
                    .cornerRadius(4)
                    .frame(width: 370, height: 100)
                    .position(x:200, y: 160)
                    .foregroundColor(Color("forrestGreen"))
                    .font(.system(size: 20))
                    
            
            Button(action: {}) {
                Image("scan_icon")
                    .resizable()
                    .frame(width: 50, height: 50)
                 }
                    .position(x: 335, y: 90)
            
            ScrollView{
                VStack (spacing: 20){
                    ForEach(Array(zip(imageNames, imageTitles)), id: \.0){ eventImage, eventTitle in
                        Image(eventImage)
                            .resizable()
                            .frame(width: 335, height: 250)
                            .onTapGesture {
                                selectedImage = eventImage
                                isOverlay = true
                            }
                            .overlay(
                                VStack{
                                    if eventImage == selectedImage && isOverlay {
                                        
                                        Text("")
                                            .frame(width: 336, height: 250)
                                            .background(.white.opacity(0.8))
                                            .position(x:167, y:125)
                                            .overlay(
                                                VStack{
                                                    Text(eventTitle)
                                                        .frame(width: 300, height: 100, alignment: .topLeading)
                                                        .bold()
                                                        .font(.system(size: 20))
                                                        .foregroundStyle(.black)
                                                        .position(x: 155, y: 60)
                                                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ")
                                                        .frame(width: 300, height: 250, alignment: .topLeading)
                                                        .foregroundStyle(.black)
                                                        .position(x:175, y:80)
                                                    Image(systemName: "plus")
                                                        .resizable()
                                                        .bold()
                                                        .frame(width: 15, height: 15, alignment: .topLeading)
                                                        .foregroundColor(.black)
                                                        .position(x: 315, y:-148)
                                                }
                                        )
                                    }
                                }
                                
                            )
                            .onTapGesture{
                                isOverlay = false
                            }
                            
                    }
                }
            }
            .frame(height: 500, alignment: .center)
            .position(x: 196, y:440)
            
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

