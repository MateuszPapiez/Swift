//
//  ContentView.swift
//  Test_Ios
//
//  Created by Mateusz Papież on 02/11/2022.
//
// !!@BINDING @Environment @Published @State!!
// Tabview

import SwiftUI

struct Subject: Identifiable {
    var id: UUID = UUID()//id generowane losowo// wypelnic tablice oraz wypisac tablice. ForEach linijka 35//
    let subject: String
    let exam: String
    let theme: String
    let endDate: String
}



let subject_list: [Subject]=[
    Subject(subject: "Matematyka", exam: "Sprawdzian", theme: "Pierwiastki", endDate: "21dni 15h"),
    Subject(subject: "Przyroda", exam: "Sprawdzian", theme: "Zwierzeta", endDate: "23dni 15h"),
    Subject(subject: "Geografia", exam: "Sprawdzian", theme: "Stolice", endDate: "27dni 15h"),
    Subject(subject: "Biologia", exam: "Sprawdzian", theme: "Sprawdzian", endDate: "43dni 15h"),
    Subject(subject: "Fizyka", exam: "Sprawdzian", theme: "100m", endDate: "78dni 15h")
]

struct ContentView: View {
    @State private var isShowingSheet = false
    var body: some View {
        
        
        
        
        
        NavigationView {
            
            //TabView{
            //info()
            //.tabItem{
            //Image(systemName: "house")
            
            ZStack {
                
                //Color.gray
                // .edgesIgnoringSafeArea(.all)
                
                VStack{
                    ScrollView(Axis.Set.horizontal){
                        HStack{
                            ForEach(subject_list){s in
                                Subject_tile(subject: s.subject, exam: s.exam, theme: s.theme, end_time: s.endDate)
                                
                                //Subject_tile.init(subject: "Matematyka", exam: "Sprawdzian", theme: "Pierwiastki", end_time: "21dni 15h")
                            }
                            //Subject_tile.init(subject: "Matematyka", exam: "Sprawdzian", theme: "Pierwiastki", end_time: "21dni 15h")
                            //Subject_tile.init(subject: "Matematyka", exam: "Sprawdzian", theme: "Pierwiastki", end_time: "21dni 15h")
                        }
                    }
                    //Button("Add", action: {})
                    Button(action: {
                        isShowingSheet.toggle()
                    }, label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 32, height: 32)
                    })
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(35)
                    
                    
                }
                
            }
            .navigationTitle("Menu")//caly ekran wyzej niz Zstack// navigatioBArTITLEDISPLAYMODE
            
            .sheet(
                isPresented: $isShowingSheet,
                onDismiss: {
                    isShowingSheet.toggle()//  control i-formatownie
                }
            ){
                Button("Add", action: {})
                
            }
        }
        
        
    }
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

