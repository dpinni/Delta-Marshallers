//
//  Profile.swift
//  Event App
//
//  Created by Clare Rizzo on 4/10/24.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ScrollView{
            VStack {
                ProfileHeader()
                ProfileDetails()
                Spacer()
            }
            .padding()
            .navigationBarTitle("My Profile")
        }
    }
}

let rewards = ["10% off ticket price", "20% off ticket price", "free t-shirt" ]
let points = ["100 points", "200 points", "500 points"]

struct ProfileHeader: View {
    var body: some View {
        VStack {
            HStack {
                Text("John Doe")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Image("scanIcon")
                    .resizable()
                    .frame(width: 70, height: 70)
                    
                Spacer()
            }
            
            Image("hector")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(.bottom, 10)
            
            
        }
    }
}

struct ProfileDetails: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("You have\t 0 points")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
                .padding()
            
            Text("View Rewards:")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title2)
                .padding()
                .bold()
            
            
                VStack (spacing: 20){
                    ForEach(rewards.indices, id: \.self) { index in
                        VStack {
                            Text(rewards[index])
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding(.bottom, 5)
                            
                            Text((points[index]))
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding(.bottom, 5)
                        }
                        .padding()
                        .frame(width: 350, height: 200)
                        .background(Color("green1").opacity(0.5))
                        .cornerRadius(10)
                        
                    }
                }
            
        }
        .font(.body)
        .foregroundColor(.black)
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Profile()
        }
    }
}
