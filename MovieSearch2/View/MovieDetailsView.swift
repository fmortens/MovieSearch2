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
            
            VStack(alignment: .center, spacing: 8) {
                
                HStack(alignment: .center) {
                    
                    Thumbnail(movieId: movie.id)
                        
                    Text(movie.title)
                        .font(.title)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                Text(movie.overview)
                    .font(.body)
                    .foregroundColor(.black)
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
