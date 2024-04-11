//
//  CalendarView.swift
//  SeeUThere
//
//  Created by Ward Eldred on 3/5/24.
//

import SwiftUI

struct CalendarView: View {
    @EnvironmentObject var userData: SharedData
    @State var selectedDate: Date = Date()

    var body: some View{
        NavigationStack{
            VStack() {
                NavigationLink(destination: AddEvent()){
                    Image(systemName: "plus")
                        .resizable()
                        .bold()
                        .frame(width: 25, height: 25)
                        .foregroundColor(Color("treeGreen"))
                        .position(x: 215, y:125)
                }
                .position(x: 335, y: 10)
                Text("My Calendar")
                    .font(.system(size: 45))
                    .bold()
                    .foregroundColor(Color("treeGreen"))
                    .position(x: 170, y: -30)
                DatePicker("Select Date", selection: $userData.selectedDate, displayedComponents: [.date])
                    .padding(.horizontal)
                    .datePickerStyle(.graphical)
                    .accentColor(Color("lightGreen"))
                    .position(x:200, y: 100)
                Spacer()
                Text("Listed Events")
                    .frame(width:200, height: 100)
                    .foregroundColor(Color("treeGreen"))
                    .font(.system(size: 20))
                    .underline()
                    .bold()
                    .position(x: 85, y:180)
                Text("This is filler text for future events that will be listed here.")
                    .frame(width:350, height: 100, alignment: .topLeading)
                    .foregroundColor(Color("treeGreen"))
                    .font(.system(size: 14))
                    .position(x: 200, y:150)
                Text("This is filler text for future events that will be listed here.")
                    .frame(width:350, height: 100, alignment: .topLeading)
                    .foregroundColor(Color("treeGreen"))
                    .font(.system(size: 14))
                    .position(x: 200, y:180)
                Text("This is filler text for future events that will be listed here.")
                    .frame(width:350, height: 100, alignment: .topLeading)
                    .foregroundColor(Color("treeGreen"))
                    .font(.system(size: 14))
                    .position(x: 200, y:1)
                
            }
            
            Section{
                
            }
        }.navigationBarBackButtonHidden(true)
    
    }
}

func getEventData(D: Date) -> Void{
   // foreach(plannedEvents e in CalendarView.allEvents){
     //   if(e.selectedDate == D){
            
       // }
    //}
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
            .environmentObject(SharedData())
    }
}


