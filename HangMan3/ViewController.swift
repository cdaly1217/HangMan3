//
//  ViewController.swift
//  HangMan3
//
//  Created by  on 4/5/19.
//  Copyright © 2019 Daly's Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet var myGroupLabels: [UILabel]!
    
    var counts = 0
    var test = "Testing"
    var alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
}
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
    {
        super.didUpdateFocus(in: context, with: coordinator)
        let guessedLetter = context.nextFocusedView
        guessedLetter?.layer.shadowOffset = CGSize(width: 0, height: 10)
        guessedLetter?.layer.shadowOpacity = 0.6
        guessedLetter?.layer.shadowRadius = 15
        guessedLetter?.layer.shadowColor = UIColor.gray.cgColor
        context.previouslyFocusedView?.layer.shadowOpacity = 0
    }
    
    @IBAction func letterButtonTapped(_ sender: UIButton)
    {
        
        let guessedLetter = sender.titleLabel?.text
        sender.isEnabled = false
        
        print("guessed \(guessedLetter)" )
        
        // check if guessded letter is in word
    }
    
    @IBOutlet weak var stackedViewSwiped: UIStackView!
}
