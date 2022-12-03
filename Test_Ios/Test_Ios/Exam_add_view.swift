//
//  Exam_add_view.swift
//  Test_Ios
//
//  Created by Mateusz Papież on 02/12/2022.
//

import SwiftUI

enum Sub: String, Hashable, Identifiable{
    var id: Self { self }//
    case matematyka
    case przyroda
    case historia
    case geografia
    case wf
    case plastyka
    
}

let picker_list: [Sub]=[
    .matematyka,
    .przyroda,
    .historia,
    .geografia,
    .wf,
    .plastyka
]

struct Exam_add_view: View {
    @State private var subject: String = ""
    @State private var sub: Sub = .matematyka
    @State private var is_main_exam: Bool = false
    @State private var main_exam: String = ""
    @State private var date = Date()
    
    
    var body: some View {
        
        
        
        NavigationView{
            
            
            
            VStack{
                Form{
                    Section("My Exam") {
                        Picker("Przedmiot", selection: $sub) {
                            ForEach(picker_list) { subject in
                                Text(subject.rawValue)
                                //Text("Matematyka").tag(Sub.matematyka)
                            }
                        }
                        
                        TextField(
                            "Theme", text:$subject)
                        //Toggle(isOn: $is_main_exam) {
                        // Text("Finish exam?")
                        // }
                        TextField(
                            "Main_exam", text:$main_exam)
                        
                    }
                    //Button ("Add", action:{
                    
                    //})
                    
                    
                    Section("Date") {
                        DatePicker(
                            "Date Exam",
                            selection: $date,
                            displayedComponents: [.date]
                        )
                        .datePickerStyle(.compact)
                        
                    }
                    //Spacer()
                    Button(action: {addElement()}){
                        HStack{
                            Spacer()
                            Text("Add")
                            Spacer()
                        }
                        .refreshable {
                            addElement()
                        }
                        .refreshable {
                            addElement()
                        }
                        
                    }
                    
                    
                    //Button(action: {}){
                    //Text("Add")
                }
                
                //Button ("Add", action:{
                
                //})
                
            }
            .navigationTitle("Exam")
            
            
        }
        //func addElement(){
        //subject_list.append(Subject(subject:"matematyka", exam: main_exam,theme: //"as",endDate: "12"))
    }
    func addElement(){
        subject_list.append(Subject(subject:"matematyka", exam: "as",theme: "as",endDate: "12"))
    }
    
}


struct Exam_add_view_Previews: PreviewProvider {
    static var previews: some View {
        Exam_add_view()
    }
}

