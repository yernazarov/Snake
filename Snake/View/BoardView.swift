//
//  BoardView.swift
//  Snake
//
//  Created by Zhandos Yernazarov on 12/12/20.
//  Copyright © 2020 Zhandos Yernazarov. All rights reserved.
//

import UIKit

class BoardView: UIView {
    
    
    let originX: CGFloat = 25
    let originY: CGFloat = 25
    let cellSide: CGFloat = 18
    var shadowSnake: [SnakeCell] = []
    override func draw(_ rect: CGRect) {
        // Drawing code
        drawGrid();
        drawSnake();
    }
    
    func drawSnake(){
        
        if shadowSnake.isEmpty {
            return
        }
// another way  of writing the same
//        guard !board.snake.isEmpty else {
//            return
//        }
        
        let snakeHead = shadowSnake.first!
        UIColor.red.setFill()
        UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(snakeHead.column) * cellSide, y: originY + CGFloat(snakeHead.row) * cellSide, width: cellSide, height: cellSide), cornerRadius: 10).fill()
        UIColor.green.setFill()
        for i in 1..<shadowSnake.count {
            let cell = shadowSnake[i]
            UIBezierPath(roundedRect: CGRect(x: originX + CGFloat(cell.column) * cellSide, y: originY + CGFloat(cell.row) * cellSide, width: cellSide, height: cellSide), cornerRadius: 10).fill()
        }
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
