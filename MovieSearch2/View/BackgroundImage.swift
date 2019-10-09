//
//  BackgroundImage.swift
//  MovieSearch2
//
//  Created by Frank Mortensen on 09/10/2019.
//  Copyright © 2019 Frank Mortensen. All rights reserved.
//

import SwiftUI

struct BackgroundImage: View {
    @EnvironmentObject private var searchData: MovieData
    
    var movieId: Int
    
    var body: some View {
        
        getImage()
            .resizable()
            .aspectRatio(contentMode: ContentMode.fill)
            .opacity(0.4)
            .blur(radius: 4)
        
    }
    
    func getImage() -> Image {
        return searchData.images[movieId] ?? Image("no_signal")
    }
}

struct BackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        
        BackgroundImage(movieId: DummyData.movies[0].id)
            .environmentObject(MovieData())
        
    }
}
