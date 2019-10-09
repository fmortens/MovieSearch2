//
//  Movie.swift
//  MovieSearch
//
//  Created by Frank Mortensen on 28/09/2019.
//  Copyright © 2019 Frank Mortensen. All rights reserved.
//

import SwiftUI

struct Movie: Codable, Identifiable {
    
    let posterPath: String?
    let adult: Bool
    let overview: String
    let releaseDate: String
    let genreIds: [Int]
    let id: Int
    let originalTitle: String
    let originalLanguage: String
    let title: String
    let backdropPath: String?
    let popularity: Double
    let voteCount: Int
    let video: Bool
    let voteAverage: Double
    
    var releaseYear: String {
        return String(releaseDate.prefix(4))
    }
    
    enum CodingKeys: String, CodingKey {
        case posterPath = "poster_path"
        case adult
        case overview
        case releaseDate = "release_date"
        case genreIds = "genre_ids"
        case id
        case originalTitle = "original_title"
        case originalLanguage = "original_language"
        case title
        case backdropPath = "backdrop_path"
        case popularity
        case voteCount = "vote_count"
        case video
        case voteAverage = "vote_average"
    }
}

//extension Movie {
//    var thumbnail: Image {
//        
//        guard let url = self.posterPath else {
//            return Image("no_signal")
//        }
//        
//        return ImageStore.shared.image(forId: self.id, fromUrl: url)
//    }
//}
