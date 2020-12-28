//
//  SnakeBoardTests.swift
//  SnakeTests
//
//  Created by Zhandos Yernazarov on 12/16/20.
//  Copyright © 2020 Zhandos Yernazarov. All rights reserved.
//

import XCTest
@testable import Snake

class SnakeBoardTests: XCTestCase {
    
    func testPrintingBoard() {
        var board = SnakeBoard()
        board.snake.append(SnakeCell(row: 3, column: 4))
        board.snake.append(SnakeCell(row: 4, column: 4))
        board.snake.append(SnakeCell(row: 5, column: 4))
        board.snake.append(SnakeCell(row: 3, column: 5))
        print(board)
    }

}
