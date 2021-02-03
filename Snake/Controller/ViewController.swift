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
    
    @IBOutlet weak var boardView: BoardView!
    override func viewDidLoad() {
        super.viewDidLoad()
        board.snake.append(SnakeCell(row: 3, column: 5))
        board.snake.append(SnakeCell(row: 3, column: 4))
        board.snake.append(SnakeCell(row: 4, column: 4))
        board.snake.append(SnakeCell(row: 5, column: 4))
        boardView.shadowSnake = board.snake
        // Do any additional setup after loading the view.
    }

    @IBAction func up(_ sender: Any) {
        board.moveUp()
        boardView.shadowSnake = board.snake
        boardView.setNeedsDisplay()
    }
    @IBAction func left(_ sender: Any) {
        board.moveLeft()
        boardView.shadowSnake = board.snake
        boardView.setNeedsDisplay()
    }
    @IBAction func right(_ sender: Any) {
        board.moveRight()
        boardView.shadowSnake = board.snake
        boardView.setNeedsDisplay()
    }
    @IBAction func down(_ sender: Any) {
        board.moveDown()
        boardView.shadowSnake = board.snake
        boardView.setNeedsDisplay()
    }
    
}

