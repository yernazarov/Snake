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
        updateUI()
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            self.board.moveUp()
            self.updateUI()
        }
    }

    @IBAction func up(_ sender: Any) {
        board.moveUp()
        updateUI()
    }
    @IBAction func left(_ sender: Any) {
        board.moveLeft()
        updateUI()
    }
    @IBAction func right(_ sender: Any) {
        board.moveRight()
        updateUI()
    }
    @IBAction func down(_ sender: Any) {
        board.moveDown()
        updateUI()
    }
    private func updateUI(){
        boardView.shadowSnake = board.snake
        boardView.shadowfruitCol = board.fruitCol
        boardView.shadowfruitRow = board.fruitRow
        boardView.setNeedsDisplay()
    }
    
}

