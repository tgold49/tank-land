//
//  GameBoard.swift
//  Tank Land Final Project
//
//  Created by TJ Goldblatt on 4/4/17.
//  Copyright © 2017 TJ Goldblatt. All rights reserved.
//

import Foundation


class TankWorld {
    var gameBoard = [[GameObject?]](repeating: [GameObject?](repeating: nil, count: 15), count: 15)
    
    init(gameBoard: [[GameObject?]]) {
        self.gameBoard = gameBoard
    }
    
    func addGO(x: Int, y: Int, object: GameObject?) {
        return gameBoard[x][y] = object
    }
    
    func printGridOld() {
        for x in 0 ... gameBoard.count - 1 {
            for y in 0 ... gameBoard.count - 1 {
                print(gameBoard[x][y])
            }
        }
    }
    
    func printGrid() {
        let linesPerSquare = 4
        let charactersPerSquare = 8
        var result: String = ""
        
        for y in 0 ... gameBoard.count * linesPerSquare {
            
            for x in 0 ..< gameBoard.count {
                var row = (y - 1) / linesPerSquare
                var col = x
                
                let currentObject: GameObject?
                if row >= 0 && col < gameBoard.count {
                    currentObject = gameBoard[col][row]
                } else {
                    currentObject = nil
                }
                
                let lineInSquare = y % linesPerSquare
                let occupied = currentObject != nil
                
                
                switch lineInSquare {
                case 0:
                    if y == 0 {
                        result += "________"
                    } else {
                        result += "_______|"
                    }
                    
                case 1:
                    if occupied {
                        let energy = currentObject!.energy
                        let energyFit = fitI(energy, charactersPerSquare - 1)
                        result += "\(energyFit)|"
                    } else {
                        result += "       |"
                    }
                    
                case 2:
                    if occupied {
                        let ID = currentObject!.ID
                        let IDFit = fit(ID, charactersPerSquare - 1)
                        result += "\(IDFit)|"
                    } else {
                        result += "       |"
                    }
                    
                case 3:
                    if occupied {
                        let position = currentObject!.position.description
                        let positionFit = fit(position, charactersPerSquare - 1)
                        result += "\(positionFit)|"
                    } else {
                        result += "       |"
                    }
                    
                default:
                    result += "       |"
                }
                
            }
            
            switch y {
            case 0:
                result += "_\n|"
            case gameBoard.count * linesPerSquare:
                result += "\n"
            default:
                result += "\n|"
            }
            
        }
        print(result)
    }
}




