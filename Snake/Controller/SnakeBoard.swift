//
//  SnakeBoard.swift
//  Snake
//
//  Created by Zhandos Yernazarov on 12/16/20.
//  Copyright © 2020 Zhandos Yernazarov. All rights reserved.
//

import Foundation



struct SnakeBoard: CustomStringConvertible {
    static let columns: Int = 10
    static let rows: Int = 10
    
    var snake: [SnakeCell] = []
    
    mutating func moveLeft(){
        snake = updateSnake(newHead: SnakeCell(row: snake[0].row, column: snake[0].column-1))
    }
    mutating func moveRight(){
        snake = updateSnake(newHead: SnakeCell(row: snake[0].row, column: snake[0].column+1))
    }
    mutating func moveUp(){
        snake = updateSnake(newHead: SnakeCell(row: snake[0].row-1, column: snake[0].column))
    }
    mutating func moveDown(){
        snake = updateSnake(newHead: SnakeCell(row: snake[0].row+1, column: snake[0].column))
    }
    func updateSnake(newHead: SnakeCell) -> [SnakeCell] {
        var newSnake: [SnakeCell] = []
        newSnake.append(newHead)
        for i in 0..<snake.count-1 {
            newSnake.append(snake[i])
        }
        return newSnake
    }
    
    func isOnSnake(col: Int, row: Int) -> Bool {
        for cell in snake {
            if cell.row == row && cell.column == col {
                return true
            }
        }
        return false
    }
    
    var description: String {
        var desc = ""
        desc+=" "
        for col in 0..<SnakeBoard.columns{
            desc += " \(col)"
        }
        desc += "\n"
        for row in 0..<SnakeBoard.rows{
            desc += "\(row)"
            for column in 0..<SnakeBoard.columns{
                if isOnSnake(col: column, row: row){
                    if snake[0].column == column && snake[0].row == row {
                        desc += " x"
                    } else {
                        desc += " o"
                    }
                }else{
                    desc = desc + " ."
                }
                
            }
            desc = desc + "\n"
        }
        
        return desc
    }
    
}
