//
//  Subject_tile.swift
//  Test_Ios
#warning("to do: -  //rouded rectangle Vstack -> Vstack + formatowanie body")//  Created by Mateusz Papież on 02/11/2022.
//


import SwiftUI

struct Subject_tile: View {
    
    let subject: String
    let exam: String
    let theme: String
    let end_time: String
    
    var body: some View {
        VStack(
            spacing:8
        )
    {
            Text(subject)
                .font(.system(size: 20))
                .padding()
                .font(.largeTitle)
            Text(exam)
            Text(theme)
        
            ZStack{
                Text(end_time)
                .padding(10)
                //.background(Color(red: 18/255, green: 150/255, blue: 198/255))
            }
        }
        .background(Color(red: 18/255, green: 150/255, blue: 198/255))
        .cornerRadius(20)
    }
}

struct Subject_tile_Previews: PreviewProvider {
    static var previews: some View {
        Subject_tile(subject: "Matematyka", exam: "Sprawdzian", theme: "Pierwiastki", end_time: "21dni 15h" )
    }
}
