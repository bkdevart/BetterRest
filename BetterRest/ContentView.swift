//
//  ContentView.swift
//  BetterRest
//
//  Created by Brandon Knox on 3/2/21.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date()
    
    var body: some View {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        let dateString = formatter.string(from: Date())
        
        return DatePicker("Please enter a date",
                   selection: $wakeUp,
                   displayedComponents: .hourAndMinute)
            .labelsHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
