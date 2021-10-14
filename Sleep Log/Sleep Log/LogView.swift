//
//  LogView.swift
//  Sleep Log
//
//  Created by tranwitt on 10/13/21.
//

import SwiftUI


struct Entry: Identifiable {
    let id = UUID()
    let date: String
}

// A view that shows the data for one Restaurant.
struct EntryRow: View {
    var LogEntry: Entry

    var body: some View {
        Text("Date: \(LogEntry.date)")
    }
}

struct LogView: View {
    
    let LogEntries = [
        Entry(date: "9/12/21"),
        Entry(date: "9/22/21"),
        Entry(date: "9/23/21")
    ]

    var body: some View {
        List(LogEntries) { LogEntry in
            EntryRow(LogEntry: LogEntry)
        }
    }
}
struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView()
    }
}
