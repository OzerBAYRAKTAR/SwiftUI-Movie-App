//
//  Movie+Stub.swift
//  SwiftUi Movie App
//
//  Created by bayraktar on 26.03.2023.
//

import Foundation

	
extension Movie{
    
    static var stubbedMovies : [Movie] {
        let response : MovieResponse? = try? Bundle.main.loadAndDecodeJSON(filename: "movie_list")
        return response!.results
    }
    static var stubbedMovie : Movie {
        stubbedMovies[0]
    }
    	
}	

extension Bundle {
    func loadAndDecodeJSON<D: Decodable>(filename : String) throws -> D? {
        guard let url = self.url(forResource: filename, withExtension: "json") else {
            return nil
        }
        let data = try Data(contentsOf: url)
        let jsonDecoder = Utils.jsonDecoder
        let decodeModel = try jsonDecoder.decode(D.self, from: data)
        return decodeModel
    }
}
	
