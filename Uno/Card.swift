//
//  Card.swift
//  Uno
//
//  Created by Karsen Hansen on 9/20/20.
//  Copyright © 2020 Karsen Hansen. All rights reserved.
//

import Foundation

struct Card: CustomStringConvertible, Equatable {
    
    let faceValue: String
    let color: String
    
    var description: String {
        return"\(faceValue) \(color)"
    }

}


