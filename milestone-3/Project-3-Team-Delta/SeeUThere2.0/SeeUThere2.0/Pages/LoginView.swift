//
//  ContentView.swift
//  Event App
//
//  Created by Clare Rizzo on 2/27/24.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var userData: SharedData
    
   
    var body: some View {
        NavigationStack {
        VStack{
            logo_login()
        }
        VStack {

                Text("Enter your Username and Password")
                    .font(.title3)
                    .padding(.bottom)
                    
            TextField("Username", text: $userData.userName)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(.green.opacity(0.1))
                    .cornerRadius(20.0)
                
            SecureField("Password", text: $userData.password1)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(.green.opacity(0.1))
                    .cornerRadius(20.0)
                
            NavigationLink("Login", destination: ContentView())
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(20.0)
            
            // link to page to create new password
            Text("Forgot Password?")
                .font(.subheadline)
                .foregroundColor(.blue)
                .padding(.bottom)
                .underline()
            
                // need to create account
                NavigationLink("Sign Up", destination: SignUpView())
                    .frame(width: UIScreen.main.bounds.size.width / 2.2, height: 50)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(20.0)
                    
            }
        }
        //.padding()
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider{
    static var previews: some View{
        LoginView()
            .environmentObject(SharedData())
    }
}

