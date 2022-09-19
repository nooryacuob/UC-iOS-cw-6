//
//  ContentView.swift
//  cw6 p1
//
//  Created by Nour Alhashash on 19/09/2022.
//

import SwiftUI

struct StudentDetails: Identifiable {
    let id = UUID()
    let fullname :String
    let year : Int
    let Age : Int }

struct ContentView: View {
    
    var Students = [
        StudentDetails(fullname: "Nour" , year: 2001 , Age:21),
        
        StudentDetails(fullname: "Mae" , year: 1990 , Age:32),
        
        StudentDetails(fullname: "Farah" , year: 1998 , Age:24)]
    
    var body: some View {
       
        
        VStack{
           
            Text("سجل الطلبة")
                .font(.largeTitle)
                .bold()
            Image("id-geadf1a6cf_1280")
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 200)
        
            ScrollView{
                VStack{
                    ForEach(
                    Students
                    
                    ){ student in
                    Text(student.fullname)
                    Text("\(student.year)" )
                    Text("\(student.Age)" )
                        Divider()
                    }
            }
            }
            
           
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
