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
        let now = Date()
        let tomorrow = Date().addingTimeInterval(86400)
        let range = now...tomorrow
        
        DatePicker("Please enter a date",
                   selection: $wakeUp, in: Date()...)
                   // displayedComponents: .hourAndMinute)
            .labelsHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
