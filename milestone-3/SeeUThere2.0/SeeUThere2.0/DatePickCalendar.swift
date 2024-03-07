//
//  DatePickCalendar.swift
//  SeeUThere
//
//  Created by Ward Eldred on 3/5/24.
//

import SwiftUI

struct DatePickCalendar: View {
    @State var selectedDate = Date()
       var body: some View {
           VStack {
               FormatDate(selectedDate: selectedDate, omitTime: true)
               Divider().frame(height: 1)
               DatePicker("Select Date", selection: $selectedDate,
                          in: ...Date(), displayedComponents: .date)
                   .datePickerStyle(.graphical)
               Divider()
           }
       }
}

struct DatePickCalendar_Previews: PreviewProvider {
    static var previews: some View {
            DatePickCalendar()
        }
}
