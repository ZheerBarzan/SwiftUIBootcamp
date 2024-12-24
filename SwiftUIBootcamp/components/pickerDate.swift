//
//  pickerDate.swift
//  SwiftUIBootcamp
//
//  Created by Zheer Barzan on 24/12/24.
//

import SwiftUI

struct pickerDate: View {
    @State private var selectedDate = Date()
    let startingDate = Calendar.current.date(from: DateComponents(year: 2021)) ?? Date()
    let endingDate = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        
       
            DatePicker("Select a date", selection: $selectedDate,
                       in: startingDate...endingDate
            )
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()
           
        Text("Selected date: \(dateFormatter.string(from: selectedDate))")
       
    }
}

#Preview {
    pickerDate()
}
