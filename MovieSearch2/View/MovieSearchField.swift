//
//  SearchField.swift
//  MovieSearch2
//
//  Created by Frank Mortensen on 07/10/2019.
//  Copyright © 2019 Frank Mortensen. All rights reserved.
//

import SwiftUI

struct MovieSearchField: View {
    
    @EnvironmentObject var searchData: MovieData
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            TextField("Search for movie", text: $searchData.searchQuery) {}
                .textFieldStyle(RoundedBorderTextFieldStyle())
           
            Button("Clear", action: {
                self.searchData.searchQuery = ""
            })
                
        }
        .padding(16)
    }
    
    
}

struct MovieSearchField_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            MovieSearchField()
                .environmentObject(MovieData())
        }
        .previewLayout(.fixed(width: 300, height: 70))
               
    }
}
