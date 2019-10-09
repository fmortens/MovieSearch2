//
//  MovieDetail.swift
//  MovieSearch2
//
//  Created by Frank Mortensen on 08/10/2019.
//  Copyright © 2019 Frank Mortensen. All rights reserved.
//

import SwiftUI

struct MovieDetailsView: View {
    @EnvironmentObject private var searchData: MovieData
    
    var movie: Movie
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .center, spacing: 8) {
                
                HStack(alignment: .center) {
                    getImage()
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fit)
                        .frame(width: 100, height: 100, alignment: .leading)
                        
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
            
            getImage()
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .opacity(0.4)
                .blur(radius: 4)
            
        )
            .edgesIgnoringSafeArea(Edge.Set.all)
        
        
    }
    
    func getImage() -> Image {
        return searchData.images[movie.id] ?? Image("no_signal")
    }
    
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: DummyData.movies[0])
            .environmentObject(MovieData())
    }
}
