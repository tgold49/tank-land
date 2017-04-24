//
//  gameObject.swift
//  Tank Land Final Project
//
//  Created by TJ Goldblatt on 4/4/17.
//  Copyright © 2017 TJ Goldblatt. All rights reserved.
//

import Foundation

class GameObject {
    let energy: Int
    let position: Position
    let ID: String
    
    init(energy: Int, position: Position, ID: String) {
        self.energy = energy
        self.position = position
        self.ID = ID
    }
    
    
}
