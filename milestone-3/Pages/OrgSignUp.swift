//
//  UserSignUp.swift
//  Event App
//
//  Created by Clare Rizzo on 3/5/24.
//

import SwiftUI

struct OrgSignUp: View {
    @EnvironmentObject var userData: SharedData
    
    @State var labelWidth: CGFloat? = nil
    
    
    var body: some View {
        NavigationStack {
            VStack {
                just_logo()
                    .padding(50)
            }
            Group {
                TextField("Username", text: $userData.userName)
                    .padding(.horizontal, 30).padding(.top, 20)
                Divider()
                    .padding(.horizontal, 30)
                TextField("Full Name", text: $userData.fullName)
                    .padding(.horizontal, 30).padding(.top, 20)
                Divider()
                    .padding(.horizontal, 30)
                TextField("Email", text: $userData.email)
                    .padding(.horizontal, 30).padding(.top, 20)
                Divider()
                    .padding(.horizontal, 30)
                TextField("Password", text: $userData.password1)
                    .padding(.horizontal, 30).padding(.top, 20)
                Divider()
                    .padding(.horizontal, 30)
                TextField("Confirm Password", text: $userData.password2)
                    .padding(.horizontal, 30).padding(.top, 20)
                Divider()
                    .padding(.horizontal, 30)
            }
            Group {
                TextField("Organization Name", text: $userData.orgName)
                    .padding(.horizontal, 30).padding(.top, 20)
                Divider()
                    .padding(.horizontal, 30)
                TextField("Organization Type", text: $userData.orgType)
                    .padding(.horizontal, 30).padding(.top, 20)
                Divider()
                    .padding(.horizontal, 30)
            }
            Spacer()
            VStack {
                Spacer()
                if (userData.password1 != userData.password2) {
                    Text("Passwords Must Match")
                        .foregroundColor(.red)
                        .position(x: 198, y: -440)
                }
                NavigationLink("Create Account", destination: ContentView())
                    
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(20.0)
            }
            
        }
    }
}

struct OrgSignUp_Previews: PreviewProvider{
    static var previews: some View{
        OrgSignUp()
            .environmentObject(SharedData())
    }
}

