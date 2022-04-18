//
//  ResultModel.swift
//  mvvmTestApp
//
//  Created by Aaryaman Saini on 17/04/22.
//

import Foundation

struct SearchResponse: Codable{
    let resultCount: Int?
    let results: [SearchResult]?
}

struct SearchResult: Codable{
    var trackId: Int?
    var trackName: String?
    var collectionName: String?
    var trackPrice: Double?
    var currency: String?
    var artworkUrl60: String?
}

#if DEBUG
extension SearchResult {
    
    static var example: SearchResult {
        
        SearchResult(
            trackId: 157487434,
            trackName: "Home",
            collectionName: "Joe Satriani",
            trackPrice: 1.29,
            currency: "USD",
            artworkUrl60: "https://is5-ssl.mzstatic.com/image/thumb/Music113/v4/c4/c1/a2/c4c1a2ad-8777-20d8-a4ef-ecddabe0de1b/source/60x60bb.jpg"
        )
    }
}
#endif
