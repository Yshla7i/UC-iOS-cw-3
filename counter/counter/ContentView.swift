//
//  ContentView.swift
//  counter
//
//  Created by Yousef Almutairy on 28/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    @State var counter2 = 0
    @State var counter3 = 0
    @State var word = "استغفرالله العظيم"
    @State var word2 = "سبحان الله وبحمده"
    @State var word3 = "سبحان الله العظيم"
    

    
    var body: some View {
        ZStack {
            VStack{
                hleper(count: $counter, word: $word)
                hleper(count: $counter2, word: $word2)
                hleper(count: $counter3, word: $word3)
                
                Image(systemName: "delete.forward")//more practicing
                    
                
                    .onTapGesture() {
                        counter = 0
                        counter2 = 0
                        counter3 = 0
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


struct hleper: View {
    @Binding var count : Int
    @Binding var word : String

    var body: some View {
        VStack{
            HStack(spacing : 40) {
                Text("\(word)")
                
                Text("\(count)")
                    .padding(.all,30)
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                
                
                    .clipShape(Circle())
                    .onTapGesture() {
                        count+=1
                    }
                
                
            }
        }
    }
}
