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
    var id: UUID = UUID()
    let subject: String
    let exam: String
    let theme: String
    let endDate: String
}



//var subject_list: [Subject]=[
    //Subject(subject: "Matematyka", exam: "Sprawdzian", theme: "Pierwiastki", endDate: "21dni 15h"),
    //Subject(subject: "Przyroda", exam: "Sprawdzian", theme: "Zwierzeta", endDate: "23dni 15h"),
    //Subject(subject: "Geografia", exam: "Sprawdzian", theme: "Stolice", endDate: "27dni 15h"),
    //Subject(subject: "Biologia", exam: "Sprawdzian", theme: "Sprawdzian", endDate: "43dni 15h"),
    //Subject(subject: "Fizyka", exam: "Sprawdzian", theme: "100m", endDate: "78dni 15h")
//]


var subject_list: [Subject]=[
    Subject(subject: "", exam:"", theme: "", endDate: "")
]


struct ContentView: View {
    @State private var isShowingSheet = false
    @State private var subject: String = ""
    @State private var exam: String = ""
    @State private var theme: String = ""
    @State private var time: String = ""
    var body: some View {
        TabView{
            NavigationView {
                
                
                ZStack {
                    
                    
                    
                    
                    Color.brown
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack{
                        ScrollView(Axis.Set.horizontal){
                            HStack{
                                ForEach(subject_list){s in
                                    Subject_tile(subject: s.subject, exam: s.exam, theme: s.theme, end_time: s.endDate)
                                    
                                }
                                
                            }
                        }
                        //Button("Add", action: {})
                        Button(action: {
                            isShowingSheet = true
                        }, label: {
                            Image(systemName: "plus")
                                .resizable()
                                .foregroundColor(.orange)
                                .frame(width: 32, height: 32)
                        })
                        .padding()
                        .background(Color(red: 18/255, green: 150/255, blue: 198/255))
                        .cornerRadius(35)
                        
                        
                    }
                    
                }
                .navigationTitle("Menu")//caly ekran wyzej niz Zstack// navigatioBArTITLEDISPLAYMODE
                
                .sheet(
                    isPresented: $isShowingSheet,
                    onDismiss: {
                        isShowingSheet = false
                    }
                ){
                    Exam_add_view()
                        
                }
                
                
            }
            .tabItem{
                Image(systemName: "house")
                Text("home")
                
            }
            info()
                .tabItem{
                    Image(systemName: "person")
                    Text("profile")
                }
            
        }
        
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


