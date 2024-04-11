//
//  scan_icon.swift
//  Event App
//
//  Created by Clare Rizzo on 3/12/24.
//

import SwiftUI

struct scan_icon: View {
    var body: some View {
        Image("scan_icon")
            .resizable()
            .frame(width: 40, height: 40)
    }
}

struct scan_icon_Previews: PreviewProvider{
    static var previews: some View{
        scan_icon()
            .environmentObject(SharedData())
    }
}

