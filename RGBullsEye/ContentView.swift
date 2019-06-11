//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Tulio Marcos Franca on 11/06/19.
//  Copyright © 2019 Tulio Marcos Franca. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    
    var body: some View {
        VStack {
            HStack {
                // target color block
                VStack {
                    Rectangle().foregroundColor(Color(red: rTarget, green: gTarget, blue: bTarget, opacity: 1.0))
                    Text("match this color")
                }
                // guess color block
                VStack {
                    Rectangle().foregroundColor(Color(red: rGuess, green: gGuess, blue: bGuess, opacity: 1.0))
                    HStack {
                        Text("r")
                        Text("g")
                        Text("b")
                    }
                }
            }
            Text("Hit me button")
            VStack {
                Text("Red slider")
                Text("green slider")
                Text("blue slider")
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
    }
}
#endif
