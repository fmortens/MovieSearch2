//
//  ContentView.swift
//  MovieSearch2
//
//  Created by Frank Mortensen on 07/10/2019.
//  Copyright © 2019 Frank Mortensen. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    @EnvironmentObject private var searchData: MovieData
    
    var body: some View {
       
        NavigationView {
            VStack(alignment: .leading) {
                MovieSearchField()
                
                List {
                    ForEach(searchData.movies) { movie in
                        
                        NavigationLink(
                            destination: MovieDetailsView(movie: movie)
                        ) {
                            MovieRow(movie: movie)
                                .listRowInsets(
                                    EdgeInsets(
                                        top: 0,
                                        leading: 0,
                                        bottom: 1,
                                        trailing: 0
                                    )
                                )
                            
                        }
                        
                    }
                }
                .navigationBarTitle(Text("Movies"))
            }
        }
        
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
            .environmentObject(MovieData())
    }
}
