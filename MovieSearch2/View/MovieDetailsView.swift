//
//  MovieDetail.swift
//  MovieSearch2
//
//  Created by Frank Mortensen on 08/10/2019.
//  Copyright © 2019 Frank Mortensen. All rights reserved.
//

import SwiftUI

struct MovieDetailsView: View {
    var movie: Movie
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 8) {
                
                Thumbnail(movieId: movie.id)
                
                Text(movie.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                
                Text(movie.overview)
                    .font(.body)
                    .fontWeight(.bold)
            }
            .padding(Edge.Set.all)
            .padding(Edge.Set.top, 80)
            
        }
        
        .background(
            BackgroundImage(movieId: movie.id)
        )
            
        .edgesIgnoringSafeArea(Edge.Set.all)
        
        
    }
    
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: DummyData.movies[0])
            .environmentObject(MovieData())
    }
}
