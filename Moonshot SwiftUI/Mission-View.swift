//
//  Mission-View.swift
//  Moonshot SwiftUI
//
//  Created by Владимир Рябов on 15.01.2022.
//

import SwiftUI

struct Mission_View: View {
    let mission: Mission
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.6)
                        .padding(.top)
                    
                    VStack(alignment: .leading) {
                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                        Text(mission.description)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
            }
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
}

struct Mission_View_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static var previews: some View {
        Mission_View(mission: missions[0])
            .preferredColorScheme(.dark)
    }
}
