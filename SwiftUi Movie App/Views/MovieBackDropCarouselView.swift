//
//  MovieBackDropCarouselView.swift
//  SwiftUi Movie App
//
//  Created by bayraktar on 27.03.2023.
//

import SwiftUI

struct MovieBackDropCarouselView: View {
    
    let title : String
    let movies : [Movie]
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 16) {
                    ForEach(self.movies) { movie in
                        MovieBackDropCard(movie: movie)
                            .frame(width: 275, height: 200)
                            .padding(.leading, movie.id == self.movies.first!.id ? 16:0 )
                            .padding(.trailing, movie.id == self.movies.last!.id ? 16:0 )
                    }
                }
            }
        }
    }
}

struct MovieBackDropCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        MovieBackDropCarouselView(title: "Latest", movies: Movie.stubbedMovies)
    }
}
