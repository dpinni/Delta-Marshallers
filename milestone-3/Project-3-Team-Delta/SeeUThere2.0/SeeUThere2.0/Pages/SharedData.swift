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

class Event{
    @Published var event = "" //important
    @Published var selectedDate: Date = Date() //important
    @Published var price = 0.0 //important
    @Published var duration = 0.0 //important
    @Published var location = "" //important
    @Published var extraInfo = "" //important
    @Published var type = 0 //important
}

class SavedEvents{
    @Published var Events: Array<Event> = []
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
    
    @Published var event = "" //important
    @Published var selectedDate: Date = Date() //important
    @Published var price = 0.0 //important
    @Published var duration = 0.0 //important
    @Published var location = "" //important
    @Published var extraInfo = "" //important
    @Published var type = 0 //important
    
    @Published var eventTypeOptions = ["Music", "Sports", "Cars", "Art", "Festival", "Food", "Charity", "Free"]
    
    @Published var isUser = false
}



struct DataView: View{
    @EnvironmentObject var userData: SharedData
    
    var body: some View{
        Text("")
    }
}

/*class plannedEvents: ObservableObject{
    static var event: String = "" //important
    static var selectedDate: Date = Date() //important
    static var price: Double = 0 //important
    static var duration: Int = 0 //important
    static var location: String = "" //important
    static var extraInfo: String = "" //important
    static var type: String = "" //important
    static var dateFormatted = DateFormatter().string(from: selectedDate)
    
    
    func checkDate(D: Date) -> Void{
        if(D == plannedEvents.selectedDate){
            showEventInfo()
        }
    }
    
    func populateData(name: String, inputD: Date, dur: Int, cost: Double, loc: String, inpuType: String, extra: String){
        plannedEvents.event = name
        plannedEvents.selectedDate = inputD
        plannedEvents.price = cost
        plannedEvents.duration = dur
        plannedEvents.location = loc
        plannedEvents.type = inpuType
        plannedEvents.extraInfo = extra
    }
    
}

struct showEventInfo:View{
    var body: some View{
        Section{
            Text("\(plannedEvents.event)").font(.headline)
            Text("$\(plannedEvents.price)")
            Text("\(plannedEvents.dateFormatted)")
            Text("\((plannedEvents.duration/60)) hours")
            Text("\(plannedEvents.location)")
            Text("\(plannedEvents.type)")
            Text("\(plannedEvents.extraInfo)")
        }
    }
}*/



