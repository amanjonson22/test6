//
//  Friend.swift
//  test6
//
//  Created by AMANDA CAROLINE DA SILVA RODRIGUES on 05/02/25.
//

import Foundation
import SwiftData

@Model
class Friend {
        
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    static let sampleData = [
        Friend(name: "Elis"),
        Friend(name: "Luis"),
        Friend(name: "Marcel")
    ]
}
