//
//  ContentView.swift
//  Moonshot SwiftUI
//
//  Created by Владимир Рябов on 14.01.2022.
//

import SwiftUI


//коммент
struct ContentView: View {
    let astronauts: [String : Astronaut] =  Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Button("Tap") {
            print(astronauts)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
