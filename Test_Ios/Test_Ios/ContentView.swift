//
//  ContentView.swift
//  Test_Ios
//
//  Created by Mateusz Papież on 02/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Text("Mam na imię Mateusz")
                Color.red
                Color.green
            VStack {
                Text("Hello, world!")
                Text("Hello, world!")
                HStack{
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
