//
//  HomeView.swift
//  mvvmTestApp
//
//  Created by Aaryaman Saini on 17/04/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var homeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                
                List{
                    HStack{
                        TextField("search text", text: $homeViewModel.searchText)
                            .textFieldStyle(.roundedBorder)
                        if homeViewModel.isSearchEnabled{
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                        } else {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.red)
                        }
                    }
                    .padding()
                    
                    ForEach(homeViewModel.results, id: \.trackId) {
                        let searchResultViewModel = SearchResultViewModel(model: $0)
                        SearchResultRowView(resultVM: searchResultViewModel)
                        
                    }
                }
                .listStyle(.inset)
                
                Button{
                    homeViewModel.performSearch()
                } label: {
                    Text("SEARCH MUSIC")
                        .frame(width: 250, height: 40)
                }
                .buttonStyle(.bordered)
                .disabled(!homeViewModel.isSearchEnabled)
                .padding(.bottom, 8)
                
            }
            .navigationTitle("MVVM DEMO")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
