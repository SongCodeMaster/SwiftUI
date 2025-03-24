//
//  FruitModel.swift
//  StudySwiftUI
//
//  Created by 송승윤 on 3/15/25.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
