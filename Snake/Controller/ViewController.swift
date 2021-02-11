//
//  ViewController.swift
//  Snake
//
//  Created by Zhandos Yernazarov on 12/7/20.
//  Copyright © 2020 Zhandos Yernazarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var board: SnakeBoard = SnakeBoard()
    var direction: MoveDirection = .down
    @IBOutlet weak var boardView: BoardView!
    override func viewDidLoad() {
        super.viewDidLoad()
        board.snake.append(SnakeCell(row: 3, column: 5))
        board.snake.append(SnakeCell(row: 3, column: 4))
        board.snake.append(SnakeCell(row: 4, column: 4))
        board.snake.append(SnakeCell(row: 5, column: 4))
        updateUI()
        
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (Timer) in
            switch self.direction {
            case .left:
                self.board.moveLeft()
            case .right:
                self.board.moveRight()
            case .up:
                self.board.moveUp()
            case .down:
                self.board.moveDown()
            }
            self.updateUI()
        }
    }

    @IBAction func up(_ sender: Any) {
        direction = .up
    }
    @IBAction func left(_ sender: Any) {
        direction = .left
    }
    @IBAction func right(_ sender: Any) {
        direction = .right
    }
    @IBAction func down(_ sender: Any) {
        direction = .down
    }
    private func updateUI(){
        boardView.shadowSnake = board.snake
        boardView.shadowfruitCol = board.fruitCol
        boardView.shadowfruitRow = board.fruitRow
        boardView.setNeedsDisplay()
    }
    
}

