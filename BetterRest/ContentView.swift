//
//  ContentView.swift
//  BetterRest
//
//  Created by Anthony Cifre on 1/24/23.
//

// https://www.youtube.com/watch?v=a905KIBw1hs CREATE ML FOR EVERYONE

import SwiftUI

struct ContentView: View {
    
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    @State private var wakeUp = Date.now
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("When do you want to wake up?")
                    .font(.headline)
                DatePicker("Pick Date:", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                Text("Desired amount of sleep")
                    .font(.headline)
                Stepper("\(sleepAmount.formatted())", value: $sleepAmount, in: 4...12, step: 0.25)
                Text("Daily coffee intake")
                    .font(.headline)
                Stepper("\(coffeeAmount) \(coffeeAmount > 1 ? "cups" : "cup")", value: $coffeeAmount, in: 1...20)
            
            }
            .padding()
            .navigationTitle("BetterRest")
            .toolbar {
                Button("Calculate", action: calculateBedtime)
            }
        }
    }
    
    func calculateBedtime() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
