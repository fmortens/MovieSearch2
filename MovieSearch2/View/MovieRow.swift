//
//  MovieRow.swift
//  MovieSearch2
//
//  Created by Frank Mortensen on 07/10/2019.
//  Copyright © 2019 Frank Mortensen. All rights reserved.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Group {
                Thumbnail(movieId: movie.id)
            }
            .background(Color.black)
            
            VStack(alignment: .leading, spacing: 0) {
                Text(movie.title).fontWeight(.bold)
                Text(movie.originalTitle).font(.subheadline)
                Text(movie.releaseYear).font(.subheadline)
            }
            
            Spacer()
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            
            MovieRow(movie: DummyData.movies[0])
                .environmentObject(MovieData())
            
            MovieRow(movie: DummyData.movies[1])
                .environmentObject(MovieData())
            
        }
           .previewLayout(.fixed(width: 400, height: 200))
        
    }
}
