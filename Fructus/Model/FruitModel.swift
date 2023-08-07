//
//  FruitModel.swift
//  Fructus
//
//  Created by Amin on 24/06/2023.
//

import SwiftUI

// MARK: - Fruite Data Model
struct Fruit:Identifiable{
    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
}


