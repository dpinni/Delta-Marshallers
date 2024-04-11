//
//  SignUpView.swift
//  Event App
//
//  Created by Clare Rizzo on 3/5/24.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        NavigationStack {
            VStack{
                logo_login()
            }
            VStack {
                NavigationLink("I am a User", destination: UserSignUp())
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(20.0)
                
                NavigationLink("I am an Organization", destination: OrgSignUp())
                    .padding()
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(20.0)
                    .padding(50)
                
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider{
    static var previews: some View{
        SignUpView()
    }
}
