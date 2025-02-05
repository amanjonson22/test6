//
//  Movie.swift
//  test6
//
//  Created by AMANDA CAROLINE DA SILVA RODRIGUES on 05/02/25.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title: String
    var releaseDate: Date
    
    init(title: String, releaseDate: Date) {
        self.title = title
        self.releaseDate = releaseDate
    }
}
