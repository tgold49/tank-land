//
//  main.swift
//  Tank Land Final Project
//
//  Created by TJ Goldblatt on 4/4/17.
//  Copyright © 2017 TJ Goldblatt. All rights reserved.
//

import Foundation

var board = [[GameObject?]](repeating: [GameObject?](repeating: nil, count: 15), count: 15)
board[3][3] = GameObject(energy: 1000, position: Position(row: 3, col: 3), ID: "tnk")
board[3][14] = GameObject(energy: 1000, position: Position(row: 3, col: 14), ID: "tnk3")
board[14][3] = GameObject(energy: 1000, position: Position(row: 14, col: 3), ID: "tnk4")
board[14][14] = GameObject(energy: 1000, position: Position(row: 14, col: 14), ID: "tnk2")
var t = TankWorld(gameBoard: board)

print(t.printGrid())
