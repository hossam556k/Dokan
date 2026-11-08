//
//  Networking.swift
//  Dokan
//
//  Created by MacBook Pro on 08/11/2026.
//

import Foundation
import Foundation

final class NetworkManager {

    func fetchProducts() async throws -> [Product] {

        guard let url = URL(
            string: "https://fakestoreapi.com/products"
        ) else {
            throw URLError(.badURL)
        }

        let (data, response) = try await URLSession.shared.data(
            from: url
        )

        guard let httpResponse = response as? HTTPURLResponse else {
            throw URLError(.badServerResponse)
        }

        guard (200...299).contains(httpResponse.statusCode) else {
            throw URLError(.badServerResponse)
        }

        let products = try JSONDecoder().decode(
            [Product].self,
            from: data
        )

        return products
    }
}
