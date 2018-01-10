//
//  ViewController.swift
//  TicTacToe
//
//  Created by Jihun Kang on 1/9/18.
//  Copyright © 2018 Jihun Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var topLeftButton1: UIButton!
    @IBOutlet weak var topMiddleButton1: UIButton!
    @IBOutlet weak var topRightButton1: UIButton!
    @IBOutlet weak var middleLeftButton1: UIButton!
    @IBOutlet weak var middleMiddleButton1: UIButton!
    @IBOutlet weak var middleRightButton1: UIButton!
    @IBOutlet weak var bottomLeftButton1: UIButton!
    @IBOutlet weak var bottomMiddleButton1: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!
    
    var player = false //false: 1st | true: 2nd
    var change: [[Bool]] = [[false, false, false], [false, false, false], [false, false, false]]
    @IBAction func topLeftButton(_ sender: UIButton) {
        if change[0][0] == false {
            change[0][0] = true
            if player {
                player = false
                sender.backgroundColor = .red
            } else {
                player = true
                sender.backgroundColor = .blue
            }
        }
        checkWin()
    }
    @IBAction func topMiddleButton(_ sender: UIButton) {
        if change[0][1] == false {
            change[0][1] = true
            if player {
                player = false
                sender.backgroundColor = .red
            } else {
                player = true
                sender.backgroundColor = .blue
            }
        }
        checkWin()
    }
    @IBAction func topRightButton(_ sender: UIButton) {
        if change[0][2] == false {
            change[0][2] = true
            if player {
                player = false
                sender.backgroundColor = .red
            } else {
                player = true
                sender.backgroundColor = .blue
            }
        }
        checkWin()
    }
    @IBAction func middleLeftButton(_ sender: UIButton) {
        if change[1][0] == false {
            change[1][0] = true
            if player {
                player = false
                sender.backgroundColor = .red
            } else {
                player = true
                sender.backgroundColor = .blue
            }
        }
        checkWin()
    }
    @IBAction func middleMiddleButton(_ sender: UIButton) {
        if change[1][1] == false {
            change[1][1] = true
            if player {
                player = false
                sender.backgroundColor = .red
            } else {
                player = true
                sender.backgroundColor = .blue
            }
        }
        checkWin()
    }
    @IBAction func middleRightButton(_ sender: UIButton) {
        if change[1][2] == false {
            change[1][2] = true
            if player {
                player = false
                sender.backgroundColor = .red
            } else {
                player = true
                sender.backgroundColor = .blue
            }
        }
        checkWin()
    }
    @IBAction func bottomLeftButton(_ sender: UIButton) {
        if change[2][0] == false {
            change[2][0] = true
            if player {
                player = false
                sender.backgroundColor = .red
            } else {
                player = true
                sender.backgroundColor = .blue
            }
        }
        checkWin()
    }
    @IBAction func bottomMiddleButton(_ sender: UIButton) {
        if change[2][1] == false {
            change[2][1] = true
            if player {
                player = false
                sender.backgroundColor = .red
            } else {
                player = true
                sender.backgroundColor = .blue
            }
        }
        checkWin()
    }
    @IBAction func bottomRightButton(_ sender: UIButton) {
        if change[2][2] == false {
            change[2][2] = true
            if player {
                player = false
                sender.backgroundColor = .red
            } else {
                player = true
                sender.backgroundColor = .blue
            }
        }
        checkWin()
    }
    @IBAction func resetButton(_ sender: UIButton) {
        change = [[false, false, false], [false, false, false], [false, false, false]]
        topLeftButton1.backgroundColor = .lightGray
        topMiddleButton1.backgroundColor = .lightGray
        topRightButton1.backgroundColor = .lightGray
        middleLeftButton1.backgroundColor = .lightGray
        middleMiddleButton1.backgroundColor = .lightGray
        middleRightButton1.backgroundColor = .lightGray
        bottomLeftButton1.backgroundColor = .lightGray
        bottomMiddleButton1.backgroundColor = .lightGray
        bottomRightButton.backgroundColor = .lightGray
        winnerLabel.isHidden = true
    }

    override func viewDidLoad() {
        winnerLabel.isHidden = true;
        super.viewDidLoad()
    }
    
    func checkWin() {
        if topLeftButton1.backgroundColor == .red && topMiddleButton1.backgroundColor == .red && topRightButton1.backgroundColor == .red {
            winnerLabel.text = "Red Wins!"
            winnerLabel.isHidden = false
        } else if topLeftButton1.backgroundColor == .blue && topMiddleButton1.backgroundColor == .blue && topRightButton1.backgroundColor == .blue {
            winnerLabel.text = "Blue Wins!"
            winnerLabel.isHidden = false
        } else if middleLeftButton1.backgroundColor == .blue && middleMiddleButton1.backgroundColor == .blue && middleRightButton1.backgroundColor == .blue {
            winnerLabel.text = "Blue Wins!"
            winnerLabel.isHidden = false
        } else if middleLeftButton1.backgroundColor == .red && middleMiddleButton1.backgroundColor == .red && middleRightButton1.backgroundColor == .red {
            winnerLabel.text = "Red Wins!"
            winnerLabel.isHidden = false
        } else if bottomLeftButton1.backgroundColor == .red && bottomMiddleButton1.backgroundColor == .red && bottomRightButton.backgroundColor == .red {
            winnerLabel.text = "Red Wins!"
            winnerLabel.isHidden = false
        } else if bottomLeftButton1.backgroundColor == .blue && bottomMiddleButton1.backgroundColor == .blue && bottomRightButton.backgroundColor == .blue {
            winnerLabel.text = "Blue Wins!"
            winnerLabel.isHidden = false
        }
            
        else if topLeftButton1.backgroundColor == .red && middleLeftButton1.backgroundColor == .red && bottomLeftButton1.backgroundColor == .red {
            winnerLabel.text = "Red Wins!"
            winnerLabel.isHidden = false
        } else if topMiddleButton1.backgroundColor == .blue && middleMiddleButton1.backgroundColor == .blue && bottomMiddleButton1.backgroundColor == .blue {
            winnerLabel.text = "Blue Wins!"
            winnerLabel.isHidden = false
        } else if topRightButton1.backgroundColor == .blue && middleRightButton1.backgroundColor == .blue && bottomRightButton.backgroundColor == .blue {
            winnerLabel.text = "Blue Wins!"
            winnerLabel.isHidden = false
        } else if topLeftButton1.backgroundColor == .blue && middleLeftButton1.backgroundColor == .blue && bottomLeftButton1.backgroundColor == .blue {
            winnerLabel.text = "Blue Wins!"
            winnerLabel.isHidden = false
        } else if topMiddleButton1.backgroundColor == .red && middleMiddleButton1.backgroundColor == .red && bottomMiddleButton1.backgroundColor == .red {
            winnerLabel.text = "Red Wins!"
            winnerLabel.isHidden = false
        } else if topRightButton1.backgroundColor == .red && middleRightButton1.backgroundColor == .red && bottomRightButton.backgroundColor == .red {
            winnerLabel.text = "Red Wins!"
            winnerLabel.isHidden = false
        }
        
        else if topLeftButton1.backgroundColor == .red && middleMiddleButton1.backgroundColor == .red && bottomRightButton.backgroundColor == .red {
            winnerLabel.text = "Red Wins!"
            winnerLabel.isHidden = false
        }  else if topLeftButton1.backgroundColor == .blue && middleMiddleButton1.backgroundColor == .blue && bottomRightButton.backgroundColor == .blue {
            winnerLabel.text = "Blue Wins!"
            winnerLabel.isHidden = false
        }
        else if topRightButton1.backgroundColor == .red && middleMiddleButton1.backgroundColor == .red && bottomLeftButton1.backgroundColor == .red {
            winnerLabel.text = "Red Wins!"
            winnerLabel.isHidden = false
        } else if topRightButton1.backgroundColor == .blue && middleMiddleButton1.backgroundColor == .blue && bottomLeftButton1.backgroundColor == .blue {
            winnerLabel.text = "Blue Wins!"
            winnerLabel.isHidden = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

