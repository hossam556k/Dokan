//
//  Product.swift
//  Dokan
//
//  Created by MacBook Pro on 08/11/2026.
//

import Foundation
import Photos

struct Product: Codable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
}
