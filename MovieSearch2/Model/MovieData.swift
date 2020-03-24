//
//  MovieData.swift
//  MovieSearch2
//
//  Created by Frank Mortensen on 07/10/2019.
//  Copyright © 2019 Frank Mortensen. All rights reserved.
//

import Combine
import SwiftUI

final class MovieData: ObservableObject {
    var searchTask: URLSessionTask?
     
    @Published var movies = [Movie]()
    @Published var images = [Int:Image]()
    
    @Published var searchQuery: String = "" {
        
        willSet(newValue) {
            
            searchTask?.cancel()
                
            if newValue != "" {
                searchTask = MovieDBClient.searchMovies(
                    query: newValue
                ) { (movies, error) in
                    self.movies = movies
                    
                    self.loadImages()
                }
            } else {
                self.movies.removeAll()
                self.images.removeAll()
            }
            
        }
    }
    
    func loadImages() {
        
        movies.forEach { (movie) in
            
            if let imagePath = movie.posterPath {
                MovieDBClient.downloadPosterImage(path: imagePath) { (data, error) in
                    guard let imageData = data else {
                        print("Could not load image")
                        
                        // Select broken image (or retry button?)
                        return
                    }

                    print("Loaded image for \(movie.title)")
                    
                    self.images[movie.id] = Image(
                        uiImage: UIImage(data: imageData)!
                    )
                }
            }
            
        }
        

    }
}
