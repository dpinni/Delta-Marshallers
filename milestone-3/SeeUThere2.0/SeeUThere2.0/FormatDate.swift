//
//  FormatDate.swift
//  SeeUThere
//
//  Created by Ward Eldred on 3/5/24.
//

import SwiftUI

struct FormatDate: View {
    var selectedDate: Date
    var omitTime: Bool = false
    var body: some View {
        Text(selectedDate.formatted(date: .abbreviated, time:
              omitTime ? .omitted : .standard))
            .font(.system(size: 28))
            .bold()
            .foregroundColor(Color.accentColor)
            .padding()
            .animation(.spring(), value: selectedDate)
            .frame(width: 500)
    }
}

struct FormatDate_Previews: PreviewProvider {
    static var previews: some View {
        FormatDate(selectedDate: Date())
    }
}
