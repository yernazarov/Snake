//
//  SnakeBoard.swift
//  Snake
//
//  Created by Zhandos Yernazarov on 12/16/20.
//  Copyright © 2020 Zhandos Yernazarov. All rights reserved.
//

import Foundation



struct SnakeBoard: CustomStringConvertible {
    static let columns: Int = 15
    static let rows: Int = 15
    var description: String {
        var desc = ""
        
        for row in 0..<SnakeBoard.rows{
            for column in 0..<SnakeBoard.columns{
                desc = desc + " ."
            }
            desc = desc + "\n"
        }
        
        return desc
    }
    
}
