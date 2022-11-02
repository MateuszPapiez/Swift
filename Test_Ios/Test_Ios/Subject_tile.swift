//
//  Subject_tile.swift
//  Test_Ios
//
//  Created by Mateusz Papież on 02/11/2022.
//

import SwiftUI

struct Subject_tile: View {
    var body: some View {
        VStack(
            spacing:10
        )
        {
            Text("Matematyka")
            Text("Sprawdzian")
            Text("Pierwiastki")
            Text("21dni 15h")
        }
        .background(Color.gray)
    }
}

struct Subject_tile_Previews: PreviewProvider {
    static var previews: some View {
        Subject_tile()
    }
}
