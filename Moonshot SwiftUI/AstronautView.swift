//
//  AstronautView.swift
//  Moonshot SwiftUI
//
//  Created by Владимир Рябов on 15.01.2022.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                Text(astronaut.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
        .preferredColorScheme(.dark)
    }
    
    init(astronaut: Astronaut) {
        self.astronaut = astronaut

    }
    
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [String : Astronaut] =  Bundle.main.decode("astronauts.json")
    static var previews: some View {
        
        AstronautView(astronaut: astronauts["grissom"]!)
    }
}
