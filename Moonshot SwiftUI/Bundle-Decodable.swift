//
//  Bundle-Decodable.swift
//  Moonshot SwiftUI
//
//  Created by Владимир Рябов on 14.01.2022.
//

import Foundation

extension Bundle {
    //T это может быть любой аррэй любой структуры любой тип данных но он должен соовтветвовать Codable протоколу
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
}
