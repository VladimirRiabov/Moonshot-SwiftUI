//
//  Mission.swift
//  Moonshot SwiftUI
//
//  Created by Владимир Рябов on 14.01.2022.
//

import Foundation

struct CrewRole: Codable {
    let name: String
    let role: String
}

struct Mission: Codable, Identifiable {
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
