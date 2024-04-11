//
//  Choice.swift
//  Event App
//
//  Created by Clare Rizzo on 3/28/24.
//

import SwiftUI

enum Events: String, CaseIterable, Hashable {
    case music = "Music"
    case sports = "Sporting Events"
    case car = "Car shows"
    case art = "Performing & Visual Arts"
    case festivals = "Festivals"
    case food = "Food and Drink"
    case charity = "Charity & Causes"
    case free = "Free"
}

struct Choice: View {

    @State var events = [Bool](repeating: false, count: Events.allCases.count)

    var body: some View {
        NavigationStack {
            VStack {
                Text("Choose events you are interested in:")
                    .bold()
                    .font(.title3)
                    .padding(.bottom, 40)
                
                Form{
                    ForEach(0..<events.count, id:\.self){i in
                        Toggle(isOn: self.$events[i]){
                            Text(Events.allCases[i].rawValue)
                        }.toggleStyle(CheckmarkToggleStyle())
                    }
                    
                }
                .frame(width: 300, height: 450)
            }
            NavigationLink("Submit", destination: ContentView())
                
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(.green)
                .cornerRadius(20.0)
                .padding(.top, 20)
        }
    }
}

struct CheckmarkToggleStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            Button(action: { withAnimation { configuration.$isOn.wrappedValue.toggle() }}){
                HStack{
                    configuration.label.foregroundColor(.primary)
                    Spacer()
                    if configuration.isOn {
                        Image(systemName: "checkmark").foregroundColor(.primary)
                    }
                }
            }
        }
    }
}



