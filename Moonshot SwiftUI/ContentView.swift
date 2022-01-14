//
//  ContentView.swift
//  Moonshot SwiftUI
//
//  Created by Владимир Рябов on 14.01.2022.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0..<100) { row in
                NavigationLink {
                    //содержимое открывающегося navigationView
                    Text("NavigationView\(row)")
                } label: {
                    //название строки-кнопки
                    Text("Navigation link \(row)")
                }
                .navigationTitle("First view")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
