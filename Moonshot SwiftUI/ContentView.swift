//
//  ContentView.swift
//  Moonshot SwiftUI
//
//  Created by Владимир Рябов on 14.01.2022.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    init(_ text: String) {
        print("Created new text")
        self.text = text
    }
}


struct ContentView: View {
    var body: some View {
        
        VStack {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(0..<100) {_ in
                        Image("Example")
                            .resizable()
                            .frame(width: 300, height: 300)
                        
                    }
                }
                
            }
            
            ScrollView(.vertical) {
                LazyVStack {
                    ForEach(0..<100) {
                        CustomText("Text\($0)")
                        
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
       
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
