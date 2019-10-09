//
//  Thumbnail.swift
//  MovieSearch2
//
//  Created by Frank Mortensen on 09/10/2019.
//  Copyright © 2019 Frank Mortensen. All rights reserved.
//

import SwiftUI

struct Thumbnail: View {
    
    @EnvironmentObject private var searchData: MovieData
    
    var movieId: Int
    
    var body: some View {
        
        self.getImage()
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 105)
    }
    
    func getImage() -> Image {
        return searchData.images[movieId] ?? Image("no_signal")
    }
    
}

struct Thumbnail_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            Thumbnail(movieId: DummyData.movies[0].id)
            .environmentObject(MovieData())
        }
         .previewLayout(.fixed(width: 105, height: 70))
    }
}
