//
//  BoardView.swift
//  Snake
//
//  Created by Zhandos Yernazarov on 12/12/20.
//  Copyright © 2020 Zhandos Yernazarov. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    
    let originX: CGFloat = 30
    let originY: CGFloat = 30
    let cellSide: CGFloat = 18
    var board = SnakeBoard()//temp code
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        board.snake.append(SnakeCell(row: 3, column: 4))
        board.snake.append(SnakeCell(row: 4, column: 4))
        board.snake.append(SnakeCell(row: 5, column: 4))
        board.snake.append(SnakeCell(row: 3, column: 5))
        drawGrid();
        drawSnake();
    }
    
    func drawSnake(){
        UIColor.green.setFill()
        let cell = UIBezierPath(roundedRect: CGRect(x: originX, y: originY, width: cellSide, height: cellSide), cornerRadius: 10)
        cell.fill()
    }
    
    func drawGrid(){
        let gridPath = UIBezierPath()
        for i in 0...SnakeBoard.rows{
            gridPath.move(to: CGPoint(x: originX, y: originY+CGFloat(i)*cellSide));
            gridPath.addLine(to: CGPoint(x: originX+CGFloat(SnakeBoard.columns)*cellSide, y: originY+CGFloat(i)*cellSide));
        }
        for j in 0...SnakeBoard.columns{
            gridPath.move(to: CGPoint(x: originX+CGFloat(j)*cellSide, y: originY));
            gridPath.addLine(to: CGPoint(x: originX+CGFloat(j)*cellSide, y: originY+CGFloat(SnakeBoard.rows)*cellSide));
        }
        
        UIColor.green.setStroke();
        gridPath.stroke();
    }
}
