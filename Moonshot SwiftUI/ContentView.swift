//
//  ContentView.swift
//  Moonshot SwiftUI
//
//  Created by Владимир Рябов on 14.01.2022.
//

import SwiftUI


struct ContentView: View {
    let layout = [
        //grid - сетка
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Text\($0)")
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
