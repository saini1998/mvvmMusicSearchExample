//
//  SearchResultRowView.swift
//  mvvmTestApp
//
//  Created by Aaryaman Saini on 18/04/22.
//

import SwiftUI

struct SearchResultRowView: View {
    
    let resultVM: SearchResultViewModel
    
    var body: some View {
        HStack{
            AsyncImage(url: resultVM.imageUrl) { image in
                image.resizable()
            } placeholder: {
                Image(systemName: "camera.fill")
            }
            .frame(width: 50, height: 50)
            .cornerRadius(10)
            
            Text(resultVM.trackName)
                .font(.title3)
                .lineLimit(2)
            
            Spacer()
            
            VStack{
                Text("Price")
                    .font(.caption2)
                Text(resultVM.fullPrice)
                    .font(.caption2.weight(.heavy))
            }
        }
        .padding()
    }
}

struct SearchResultRowView_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultRowView(resultVM: SearchResultViewModel(
            model: SearchResult.example)
        )
            .previewLayout(.fixed(width: 360, height: 80))
    }
}
