//
//  ViewController.swift
//  Calculator
//
//  Created by Taylor Mott on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let displayLabel = UILabel()
    let buttonZero = UIButton()
    let buttonOne = UIButton()
    let buttonTwo = UIButton()
    let buttonThree = UIButton()
    let buttonFour = UIButton()
    let buttonFive = UIButton()
    let buttonSix = UIButton()
    let buttonSeven = UIButton()
    let buttonEight = UIButton()
    let buttonNine = UIButton()
    let buttonDivide = UIButton()
    let buttonMultiply = UIButton()
    let buttonSubtract = UIButton()
    let buttonAdd = UIButton()
    let buttonEnter = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupButtons()
        buttonConstraints()
        
    }
    
    func setupButtons() {
        displayLabel.backgroundColor = .blackColor()
        buttonZero.backgroundColor = .grayColor()
        buttonOne.backgroundColor = .grayColor()
        buttonTwo.backgroundColor = .grayColor()
        buttonThree.backgroundColor = .grayColor()
        buttonFour.backgroundColor = .grayColor()
        buttonFive.backgroundColor = .grayColor()
        buttonSix.backgroundColor = .grayColor()
        buttonSeven.backgroundColor = .grayColor()
        buttonEight.backgroundColor = .grayColor()
        buttonNine.backgroundColor = .grayColor()
        buttonEnter.backgroundColor = .greenColor()
        buttonDivide.backgroundColor = .orangeColor()
        buttonMultiply.backgroundColor = .orangeColor()
        buttonSubtract.backgroundColor = .orangeColor()
        buttonAdd.backgroundColor = .orangeColor()
        
        view.addSubview(displayLabel)
        view.addSubview(buttonZero)
        view.addSubview(buttonOne)
        view.addSubview(buttonTwo)
        view.addSubview(buttonThree)
        view.addSubview(buttonFour)
        view.addSubview(buttonFive)
        view.addSubview(buttonSix)
        view.addSubview(buttonSeven)
        view.addSubview(buttonEight)
        view.addSubview(buttonNine)
        view.addSubview(buttonEnter)
        view.addSubview(buttonDivide)
        view.addSubview(buttonMultiply)
        view.addSubview(buttonSubtract)
        view.addSubview(buttonAdd)
    }
    
    
    func buttonConstraints() {
        
        displayLabel.translatesAutoresizingMaskIntoConstraints = false
        buttonZero.translatesAutoresizingMaskIntoConstraints = false
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonThree.translatesAutoresizingMaskIntoConstraints = false
        buttonFour.translatesAutoresizingMaskIntoConstraints = false
        buttonFive.translatesAutoresizingMaskIntoConstraints = false
        buttonSix.translatesAutoresizingMaskIntoConstraints = false
        buttonSeven.translatesAutoresizingMaskIntoConstraints = false
        buttonEight.translatesAutoresizingMaskIntoConstraints = false
        buttonNine.translatesAutoresizingMaskIntoConstraints = false
        buttonDivide.translatesAutoresizingMaskIntoConstraints = false
        buttonMultiply.translatesAutoresizingMaskIntoConstraints = false
        buttonSubtract.translatesAutoresizingMaskIntoConstraints = false
        buttonAdd.translatesAutoresizingMaskIntoConstraints = false
        buttonEnter.translatesAutoresizingMaskIntoConstraints = false
        
        // Row 1 Label Height Width Top Constraints
        let topDisplayLabelWidth = NSLayoutConstraint(item: displayLabel, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 1.0, constant: 0)
        
        let topDisplayLabelHeight = NSLayoutConstraint(item: displayLabel, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.25, constant: 0)
        let topDisplayLabelTop = NSLayoutConstraint(item: displayLabel, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 0)
        
        view.addConstraints([topDisplayLabelWidth, topDisplayLabelHeight, topDisplayLabelTop])
        
        
        // Row 2 
        // First Button
        let rowTwoFirstButtonLeadingConstraint = NSLayoutConstraint(item: buttonSeven, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let rowTwoFirstButtonTopConstraint = NSLayoutConstraint(item: buttonSeven, attribute: .Top, relatedBy: .Equal, toItem: displayLabel, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowTwoFirstButtonTrailingConstraint = NSLayoutConstraint(item: buttonSeven, attribute: .Trailing, relatedBy: .Equal, toItem: buttonEight, attribute: .Trailing, multiplier: 1.0, constant: 0)
        // Second Button
        let rowTwoSecondButtonTopConstraint = NSLayoutConstraint(item: buttonEight, attribute: .Top, relatedBy: .Equal, toItem: displayLabel, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowTwoSecondButtonTrailingConstraint = NSLayoutConstraint(item: buttonEight, attribute: .Trailing, relatedBy: .Equal, toItem: buttonNine, attribute: .Trailing, multiplier: 1.0, constant: 0)
        // Third Button
        let rowTwoThirdButtonTopConstraint = NSLayoutConstraint(item: buttonNine, attribute: .Top, relatedBy: .Equal, toItem: displayLabel, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowTwoThirdButtonTrailingConstraint = NSLayoutConstraint(item: buttonNine, attribute: .Trailing, relatedBy: .Equal, toItem: buttonDivide, attribute: .Trailing, multiplier: 1.0, constant: 0)
        // Fourth Button
        let rowTwoFourthButtonTopConstraint = NSLayoutConstraint(item: buttonDivide, attribute: .Top, relatedBy: .Equal, toItem: displayLabel, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowTwoFourthButtonTrailingConstraint = NSLayoutConstraint(item: buttonDivide, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([rowTwoFirstButtonLeadingConstraint, rowTwoFirstButtonTopConstraint, rowTwoFirstButtonTrailingConstraint, rowTwoSecondButtonTopConstraint, rowTwoSecondButtonTopConstraint, rowTwoSecondButtonTrailingConstraint, rowTwoThirdButtonTopConstraint, rowTwoThirdButtonTrailingConstraint, rowTwoFourthButtonTopConstraint, rowTwoFourthButtonTrailingConstraint])
        
        // Row 3
        // First Button
        let rowThreeFirstButtonLeadingConstraint = NSLayoutConstraint(item: buttonFour, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let rowThreeFirstButtonTopConstraint = NSLayoutConstraint(item: buttonFour, attribute: .Top, relatedBy: .Equal, toItem: buttonSeven, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowThreeFirstButtonTrailingConstraint = NSLayoutConstraint(item: buttonFour, attribute: .Trailing, relatedBy: .Equal, toItem: buttonFive, attribute: .Trailing, multiplier: 1.0, constant: 0)
        // Second Button
        let rowThreeSecondButtonTopConstraint = NSLayoutConstraint(item: buttonFive, attribute: .Top, relatedBy: .Equal, toItem: buttonEight, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowThreeSecondButtonTrailingConstraint = NSLayoutConstraint(item: buttonFive, attribute: .Trailing, relatedBy: .Equal, toItem: buttonSix, attribute: .Trailing, multiplier: 1.0, constant: 0)
        // Third Button
        let rowThreeThirdButtonTopConstraint = NSLayoutConstraint(item: buttonSix, attribute: .Top, relatedBy: .Equal, toItem: buttonNine, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowThreeThirdButtonTrailingConstraint = NSLayoutConstraint(item: buttonSix, attribute: .Trailing, relatedBy: .Equal, toItem: buttonMultiply, attribute: .Trailing, multiplier: 1.0, constant: 0)
        // Fourth Button
        let rowThreeFourthButtonTopConstraint = NSLayoutConstraint(item: buttonMultiply, attribute: .Top, relatedBy: .Equal, toItem: buttonDivide, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowThreeFourthButtonTrailingConstraint = NSLayoutConstraint(item: buttonMultiply, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([rowThreeFirstButtonLeadingConstraint, rowThreeFirstButtonTopConstraint, rowThreeFirstButtonTrailingConstraint, rowThreeSecondButtonTopConstraint, rowThreeSecondButtonTrailingConstraint, rowThreeThirdButtonTopConstraint, rowThreeThirdButtonTrailingConstraint, rowThreeFourthButtonTopConstraint, rowThreeFourthButtonTrailingConstraint])
        
        // Row 4
        // First Button
        let rowFourFirstButtonLeadingConstraint = NSLayoutConstraint(item: buttonOne, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let rowFourFirstButtonTopConstraint = NSLayoutConstraint(item: buttonOne, attribute: .Top, relatedBy: .Equal, toItem: buttonFour, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowFourFirstButtonTrailingConstraint = NSLayoutConstraint(item: buttonOne, attribute: .Trailing, relatedBy: .Equal, toItem: buttonTwo, attribute: .Trailing, multiplier: 1.0, constant: 0)
        // Second Button
        let rowFourSecondButtonTopConstraint = NSLayoutConstraint(item: buttonTwo, attribute: .Top, relatedBy: .Equal, toItem: buttonFive, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowFourSecondButtonTrailingConstraint = NSLayoutConstraint(item: buttonTwo, attribute: .Trailing, relatedBy: .Equal, toItem: buttonThree, attribute: .Trailing, multiplier: 1.0, constant: 0)
        // Third Button
        let rowFourThirdButtonTopConstraint = NSLayoutConstraint(item: buttonThree, attribute: .Top, relatedBy: .Equal, toItem: buttonSix, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowFourThirdButtonTrailingConstraint = NSLayoutConstraint(item: buttonThree, attribute: .Trailing, relatedBy: .Equal, toItem: buttonSubtract, attribute: .Trailing, multiplier: 1.0, constant: 0)
        // Fourth Button
        let rowFourFourthButtonTopConstraint = NSLayoutConstraint(item: buttonSubtract, attribute: .Top, relatedBy: .Equal, toItem: buttonMultiply, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowFourFourthButtonTrailingConstraint = NSLayoutConstraint(item: buttonSubtract, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        view.addConstraints([rowFourFirstButtonLeadingConstraint, rowFourFirstButtonTopConstraint, rowFourFirstButtonTrailingConstraint, rowFourSecondButtonTopConstraint, rowFourSecondButtonTrailingConstraint, rowFourThirdButtonTopConstraint, rowFourThirdButtonTrailingConstraint, rowFourFourthButtonTopConstraint, rowFourFourthButtonTrailingConstraint])
        
        // Row 5
        // First Button
        let rowFiveFirstButtonLeadingConstraint = NSLayoutConstraint(item: buttonZero, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let rowFiveFirstButtonTopConstraint = NSLayoutConstraint(item: buttonZero, attribute: .Top, relatedBy: .Equal, toItem: buttonOne, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowFiveFirstButtonTrailingConstraint = NSLayoutConstraint(item: buttonZero, attribute: .Trailing, relatedBy: .Equal, toItem: buttonEnter, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowFiveFirstButtonBottomConstraint = NSLayoutConstraint(item: buttonZero, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Second Button
        let rowFiveSecondButtonTopConstraint = NSLayoutConstraint(item: buttonEnter, attribute: .Top, relatedBy: .Equal, toItem: buttonThree, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowFiveSecondButtonTrailingConstraint = NSLayoutConstraint(item: buttonEnter, attribute: .Trailing, relatedBy: .Equal, toItem: buttonAdd, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowFiveSecondButtonBottomConstraint = NSLayoutConstraint(item: buttonEnter, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Third Button
        let rowFiveThirdButtonTopConstraint = NSLayoutConstraint(item: buttonAdd, attribute: .Top, relatedBy: .Equal, toItem: buttonSubtract, attribute: .Top, multiplier: 1.0, constant: 0)
        let rowFiveThirdButtonTrailingConstraint = NSLayoutConstraint(item: buttonAdd, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowFiveThirdButtonBottomConstraint = NSLayoutConstraint(item: buttonAdd, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([rowFiveFirstButtonLeadingConstraint, rowFiveFirstButtonTopConstraint, rowFiveFirstButtonTrailingConstraint, rowFiveFirstButtonTrailingConstraint, rowFiveFirstButtonBottomConstraint, rowFiveSecondButtonTopConstraint, rowFiveSecondButtonTrailingConstraint, rowFiveSecondButtonBottomConstraint, rowFiveThirdButtonTopConstraint, rowFiveThirdButtonTrailingConstraint, rowFiveThirdButtonBottomConstraint])
        
    }

 
    

}









