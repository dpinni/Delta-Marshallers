//
//  just_logo.swift
//  Event App
//
//  Created by Clare Rizzo on 3/5/24.
//

import SwiftUI

struct just_logo: View {
    var body: some View {
        Image("logo")
            .resizable()
            .frame(width: 200, height: 200)
            //.opacity(0.3)
            
    }
}

struct just_logo_Previews: PreviewProvider {
    static var previews: some View {
        just_logo()
    }
}
