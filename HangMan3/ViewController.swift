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
    
    var counts = 0
    var test = "TESTING"
    var alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
//    var alphabet2: String
    var guessedWord = ""
//    var word: String
    var actualWord = "JOURNAL"
    var displayWord = ""
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        setdisplayWord()
        myLabel.text = displayWord
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
        
        // if guessedLetter is tapped, i want it to display in label
        // if guessedLetter is tapped i want it to display in not good label
//        myGroupLabels[0].text = guessedLetter
//
        if test.contains(Character(guessedLetter ?? "0"))
        {
            print(test + " contains " + guessedLetter!)
        }

//
//        for letter in word.characters
//        {
//            if guessedLetter.contains(letter)
//            {
//                guessedLetter += "\(letter)"
//            }
//            else
//            {
//                guessedLetter += "_"
//            }
        }
//        else if !test.contains(Character(guessedLetter ?? "0"))
//        {
//            print(test + " does not contain " + guessedLetter!)
//        }
    
//        
//        print("guessed \(guessedLetter)" )
    
        // check if guessded letter is in word
    }
    
//    @IBOutlet weak var stackedViewSwiped: UIStackView!

        
    
    
//    func guessedWord(word: String)
//    {
//        var result = ""
//        for char in word
//        {
//            if char == actualWord
//            {
//                result += guessedLetter
//            }
//            else if ()
//            {
//                result += String(char)
//            }
//
//        }
//        print(result)
//    }
//
//    func setdisplayWord()
//    {
//        for i in 0..<actualWord.count
//        {
//            displayWord += "_ "
//        }
//    }

   
//}
