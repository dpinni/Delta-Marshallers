//
//  SharedData.swift
//  SeeUThere2.0
//
//  Created by Nia Michele Dicks on 3/14/24.
//

    //friends page
    // search page
    // pro picutre b/w signup
    // filter enters post signup
    //
//  to do post break

import SwiftUI

class SharedEventData: ObservableObject{
    @State private var event: String = "" //important
    @State private var selectedDate: Date = Date() //important
    @State private var price: Double = 0 //important
    @State private var duration: Double = 0 //important
    @State private var isEditing = false
    @State private var location: String = "" //important
    @State private var extraInfo: String = "" //important
}

class SharedData: ObservableObject {
    @Published var fullName = ""
    @Published var userName = ""
    @Published var password1 = ""
    @Published var password2 = ""
    @Published var email = ""
    @Published var birthDate = ""
    @Published var orgName = ""
    @Published var orgType = ""
}

struct DataView: View{
    @EnvironmentObject var userData: SharedData
    
    var body: some View{
        Text("")
    }
}


