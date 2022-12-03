//
//  info.swift
//  Test_Ios
//
//  Created by Mateusz Papież on 15/11/2022.
//

import SwiftUI


struct info: View {
    @State private var name: String = ""
    @State private var info: String = ""
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.brown
                    .edgesIgnoringSafeArea(.all)
                //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                VStack{
                    Image("flower")
                        .frame(width: 120, height: 120)
                        .cornerRadius(15)
                        .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color(red: 18/255, green: 150/255, blue: 198/255), lineWidth: 4))
                    //.stroke()
                    //.cornerRadius(10)
                    //.resizable()
                    
                    //.clipShape(Rectangle())
                    //.overlay {
                    //.scale(dynamicScale)
                    //Rectangle(cornerRadius: 10)
                    //.stroke(.blue, lineWidth: 4)
                    
                    
                    
                    Spacer()
                    
                    
                    
                }
                
            }
            
            .navigationTitle("Profile")
            
        }
        
        
    }
}


struct info_Previews: PreviewProvider {
    static var previews: some View {
        info()
    }
}
