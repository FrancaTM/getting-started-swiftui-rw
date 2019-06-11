//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Tulio Marcos Franca on 11/06/19.
//  Copyright © 2019 Tulio Marcos Franca. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                // target color block
                VStack {
                    Rectangle()
                    Text("match this color")
                }
                // guess color block
                VStack {
                    Rectangle()
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
        ContentView()
    }
}
#endif
