//
//  logo_login.swift
//  Event App
//
//  Created by Clare Rizzo on 3/5/24.
//

import SwiftUI

struct logo_login: View {
    var body: some View {
        Image("logoName")
            .resizable()
            .frame(width: 300, height: 300)
        
    }
}

struct logo_login_Previews: PreviewProvider{
    static var previews: some View{
        logo_login()
    }
}
