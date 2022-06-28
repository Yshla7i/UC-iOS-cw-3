//
//  ContentView.swift
//  Grades
//
//  Created by Yousef Almutairy on 27/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var myGrades = ""
    @State var Grades = ""
    
    var body: some View {
        ZStack {
            Color.blue
            VStack(spacing : 30) {
                Text("حاسبة الدرجات")
            Image("Image")
            TextField(" احسب درجتي", text: $myGrades)
                    .background()
                    .frame(width: 300)
            Text("احسب درجتي ")
                    .onTapGesture {
                        print(myGrades)
                if Int(myGrades)! >= 90 {
                    
                   Grades = "امتياز"
                    
                } else if Int(myGrades)! >= 80 {
                    
                    Grades = "جيد جدا"
            
            } else if Int(myGrades)! >= 70 {
                
                Grades = "جيد"
        }
                else if Int(myGrades)! >= 60 {
                    
                    Grades = "مقبول"
                    
        
    } else if Int(myGrades)! < 60 {
        
        Grades = "راسب"
    }
                
}
    
                .padding(.horizontal, 50)
                .background(.yellow)
                .clipShape(Capsule())
                
                
                Text(Grades)
                    .font(.largeTitle)
                

                
                   
            }
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
