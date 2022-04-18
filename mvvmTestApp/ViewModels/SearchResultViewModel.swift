//
//  SearchResultViewModel.swift
//  mvvmTestApp
//
//  Created by Aaryaman Saini on 18/04/22.
//

import Foundation


struct SearchResultViewModel {
    let model: SearchResult
    
    var trackName: String {
        model.trackName ?? ""
    }
    
    var imageUrl: URL? {
        URL(string: model.artworkUrl60 ?? "")
    }
    
    var fullPrice: String{
        guard let gPrice = model.trackPrice,
                let gCurrency = model.currency
        else { return "N/A" }
        return gPrice.formatted(.currency(code: gCurrency))
    }
}
