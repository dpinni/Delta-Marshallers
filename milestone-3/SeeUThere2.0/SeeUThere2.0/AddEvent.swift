//
//  AddEvent.swift
//  SeeUThere
//
//  Created by Ward Eldred on 3/5/24.
//

import SwiftUI

//@State private var event: String = ""
//@FocusState private var emailFieldIsFocused: Bool = false

/*@State private var Date: String = ""
//@FocusState private var emailFieldIsFocused: Bool = false

@State private var Information: String = ""
//@FocusState private var emailFieldIsFocused: Bool = false

@State private var Price: Int = 0
//@FocusState private var emailFieldIsFocused: Bool = false

@State private var Type: String = ""
//@FocusState private var emailFieldIsFocused: Bool = false

@State private var Location: String = ""
//@FocusState private var emailFieldIsFocused: Bool = false
*/


struct AddEvent: View {
    @State private var event: String = ""
    
    var body: some View{
        Form{
            /*Event Name*/
            Section{
                Text("Event Name").font(.headline)
                TextField(text: $event, prompt: Text("Enter your Event Name")){
                    Text("EventName")
                }
            }
            /*Type
             Section{
             Text("Event Name").font(.headline)
             Event=TextField(placeholder: Text("Enter the name of your event")
             }
             Date
             Section{
             Text("Date").font(.headline)
             DatePickCalendar()
             }
             /*Information & Details*/
             Section{
             Text("Event Information").font(.headline)
             TextField(Information, placeholder: Text("Enter the name of your event")
             )
             }
             /*Price*/
             Section{
             Text("Event Name").font(.headline)
             TextField(text: $Event, placeholder: Text("Enter the name of your event")
             )
             }
             /*Location*/
             Section{
             Text("Event Name").font(.headline)
             TextField(placeholder: Text("Enter the name of your event")
             }
             */
        }
    }

}

struct AddEvent_Previews: PreviewProvider {
    static var previews: some View {
        AddEvent()
    }
}
