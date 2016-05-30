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
        let rowTwoFirstButtonTopConstraint = NSLayoutConstraint(item: buttonSeven, attribute: .Top, relatedBy: .Equal, toItem: displayLabel, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Second Button
        let rowTwoSecondButtonLeadingConstraint = NSLayoutConstraint(item: buttonEight, attribute: .Leading, relatedBy: .Equal, toItem: buttonSeven, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowTwoSecondButtonTopConstraint = NSLayoutConstraint(item: buttonEight, attribute: .Top, relatedBy: .Equal, toItem: displayLabel, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Third Button
        let rowTwoThirdButtonLeadingConstraint = NSLayoutConstraint(item: buttonNine, attribute: .Leading, relatedBy: .Equal, toItem: buttonEight, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowTwoThirdButtonTopConstraint = NSLayoutConstraint(item: buttonNine, attribute: .Top, relatedBy: .Equal, toItem: displayLabel, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Fourth Button
        let rowTwoFourthButtonLeadingConstraint = NSLayoutConstraint(item: buttonDivide, attribute: .Leading, relatedBy: .Equal, toItem: buttonNine, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowTwoFourthButtonTopConstraint = NSLayoutConstraint(item: buttonDivide, attribute: .Top, relatedBy: .Equal, toItem: displayLabel, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let rowTwoFourthButtonTrailingConstraint = NSLayoutConstraint(item: buttonDivide, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)

        
        view.addConstraints([rowTwoFirstButtonLeadingConstraint, rowTwoFirstButtonTopConstraint, rowTwoSecondButtonTopConstraint, rowTwoSecondButtonLeadingConstraint, rowTwoThirdButtonLeadingConstraint, rowTwoThirdButtonTopConstraint, rowTwoFourthButtonTopConstraint, rowTwoFourthButtonLeadingConstraint, rowTwoFourthButtonTrailingConstraint])
        
        // Row 3
        // First Button
        let rowThreeFirstButtonLeadingConstraint = NSLayoutConstraint(item: buttonFour, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let rowThreeFirstButtonTopConstraint = NSLayoutConstraint(item: buttonFour, attribute: .Top, relatedBy: .Equal, toItem: buttonSeven, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Second Button
        let rowThreeSecondButtonLeadingConstraint = NSLayoutConstraint(item: buttonFive, attribute: .Leading, relatedBy: .Equal, toItem: buttonFour, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowThreeSecondButtonTopConstraint = NSLayoutConstraint(item: buttonFive, attribute: .Top, relatedBy: .Equal, toItem: buttonEight, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Third Button
        let rowThreeThirdButtonLeadingConstraint = NSLayoutConstraint(item: buttonSix, attribute: .Leading, relatedBy: .Equal, toItem: buttonFive, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowThreeThirdButtonTopConstraint = NSLayoutConstraint(item: buttonSix, attribute: .Top, relatedBy: .Equal, toItem: buttonNine, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Fourth Button
        let rowThreeFourthButtonLeadingConstraint = NSLayoutConstraint(item: buttonMultiply, attribute: .Leading, relatedBy: .Equal, toItem: buttonSix, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowThreeFourthButtonTopConstraint = NSLayoutConstraint(item: buttonMultiply, attribute: .Top, relatedBy: .Equal, toItem: buttonDivide, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let rowThreeFourthButtonTrailingConstraint = NSLayoutConstraint(item: buttonMultiply, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        
        view.addConstraints([rowThreeFirstButtonLeadingConstraint, rowThreeFirstButtonTopConstraint, rowThreeFirstButtonLeadingConstraint, rowThreeSecondButtonTopConstraint, rowThreeSecondButtonLeadingConstraint, rowThreeThirdButtonTopConstraint, rowThreeThirdButtonLeadingConstraint, rowThreeFourthButtonTopConstraint, rowThreeFourthButtonLeadingConstraint, rowThreeFourthButtonTrailingConstraint])
        
        // Row 4
        // First Button
        let rowFourFirstButtonLeadingConstraint = NSLayoutConstraint(item: buttonOne, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let rowFourFirstButtonTopConstraint = NSLayoutConstraint(item: buttonOne, attribute: .Top, relatedBy: .Equal, toItem: buttonFour, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Second Button
        let rowFourSecondButtonLeadingConstraint = NSLayoutConstraint(item: buttonTwo, attribute: .Leading, relatedBy: .Equal, toItem: buttonOne, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowFourSecondButtonTopConstraint = NSLayoutConstraint(item: buttonTwo, attribute: .Top, relatedBy: .Equal, toItem: buttonFive, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Third Button
        let rowFourThirdButtonLeadingConstraint = NSLayoutConstraint(item: buttonThree, attribute: .Leading, relatedBy: .Equal, toItem: buttonTwo, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowFourThirdButtonTopConstraint = NSLayoutConstraint(item: buttonThree, attribute: .Top, relatedBy: .Equal, toItem: buttonSix, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Fourth Button
        let rowFourFourthButtonLeadingConstraint = NSLayoutConstraint(item: buttonSubtract, attribute: .Leading, relatedBy: .Equal, toItem: buttonThree, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowFourFourthButtonTopConstraint = NSLayoutConstraint(item: buttonSubtract, attribute: .Top, relatedBy: .Equal, toItem: buttonMultiply, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let rowFourFourthButtonTrailingConstraint = NSLayoutConstraint(item: buttonSubtract, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        
        
        view.addConstraints([rowFourFirstButtonLeadingConstraint, rowFourFirstButtonTopConstraint, rowFourSecondButtonTopConstraint, rowFourSecondButtonLeadingConstraint, rowFourThirdButtonTopConstraint, rowFourThirdButtonLeadingConstraint, rowFourFourthButtonTopConstraint, rowFourFourthButtonLeadingConstraint, rowFourFourthButtonTrailingConstraint])
        
        // Row 5
        // First Button
        let rowFiveFirstButtonLeadingConstraint = NSLayoutConstraint(item: buttonZero, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let rowFiveFirstButtonTopConstraint = NSLayoutConstraint(item: buttonZero, attribute: .Top, relatedBy: .Equal, toItem: buttonOne, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let rowFiveFirstButtonBottomConstraint = NSLayoutConstraint(item: buttonZero, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Second Button
        let rowFiveSecondButtonLeadingConstraint = NSLayoutConstraint(item: buttonEnter, attribute: .Leading, relatedBy: .Equal, toItem: buttonZero, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowFiveSecondButtonTopConstraint = NSLayoutConstraint(item: buttonEnter, attribute: .Top, relatedBy: .Equal, toItem: buttonThree, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let rowFiveSecondButtonBottomConstraint = NSLayoutConstraint(item: buttonEnter, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        // Third Button
        let rowFiveThirdButtonLeadingConstraint = NSLayoutConstraint(item: buttonAdd, attribute: .Leading, relatedBy: .Equal, toItem: buttonEnter, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let rowFiveThirdButtonTopConstraint = NSLayoutConstraint(item: buttonAdd, attribute: .Top, relatedBy: .Equal, toItem: buttonSubtract, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let rowFiveThirdButtonBottomConstraint = NSLayoutConstraint(item: buttonAdd, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([rowFiveFirstButtonLeadingConstraint, rowFiveFirstButtonTopConstraint, rowFiveFirstButtonLeadingConstraint, rowFiveFirstButtonLeadingConstraint, rowFiveFirstButtonBottomConstraint, rowFiveSecondButtonTopConstraint, rowFiveSecondButtonLeadingConstraint, rowFiveSecondButtonBottomConstraint, rowFiveThirdButtonTopConstraint, rowFiveThirdButtonLeadingConstraint, rowFiveThirdButtonBottomConstraint])
        
        // Button Heights
        let buttonOneHeight = NSLayoutConstraint(item: buttonOne, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonTwoHeight = NSLayoutConstraint(item: buttonTwo, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonThreeHeight = NSLayoutConstraint(item: buttonThree, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonFourHeight = NSLayoutConstraint(item: buttonFour, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonFiveHeight = NSLayoutConstraint(item: buttonFive, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonSixHeight = NSLayoutConstraint(item: buttonSix, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonSevenHeight = NSLayoutConstraint(item: buttonSeven, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonEightHeight = NSLayoutConstraint(item: buttonEight, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonNineHeight = NSLayoutConstraint(item: buttonNine, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonZeroHeight = NSLayoutConstraint(item: buttonZero, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonEnterHeight = NSLayoutConstraint(item: buttonEnter, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonDivideHeight = NSLayoutConstraint(item: buttonDivide, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonSubtractHeight = NSLayoutConstraint(item: buttonSubtract, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        let buttonMultiplyHeight = NSLayoutConstraint(item: buttonMultiply, attribute: .Height, relatedBy: .Equal, toItem: view, attribute: .Height, multiplier: 0.1875, constant: 0)
        
        view.addConstraints([buttonOneHeight, buttonTwoHeight, buttonThreeHeight, buttonFourHeight, buttonFiveHeight, buttonSixHeight, buttonSevenHeight, buttonEightHeight, buttonNineHeight, buttonZeroHeight, buttonEnterHeight, buttonDivideHeight, buttonSubtractHeight, buttonMultiplyHeight])
        
        
        // Button Widths
        let buttonOneWidth = NSLayoutConstraint(item: buttonOne, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonTwoWidth = NSLayoutConstraint(item: buttonTwo, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonThreeWidth = NSLayoutConstraint(item: buttonThree, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonFourWidth = NSLayoutConstraint(item: buttonFour, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonFiveWidth = NSLayoutConstraint(item: buttonFive, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonSixWidth = NSLayoutConstraint(item: buttonSix, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonSevenWidth = NSLayoutConstraint(item: buttonSeven, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonEightWidth = NSLayoutConstraint(item: buttonEight, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonNineWidth = NSLayoutConstraint(item: buttonNine, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonAddWidth = NSLayoutConstraint(item: buttonAdd, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonSubtractWidth = NSLayoutConstraint(item: buttonSubtract, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonMultiplyWidth = NSLayoutConstraint(item: buttonMultiply, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonEnterWidth = NSLayoutConstraint(item: buttonEnter, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.25, constant: 0)
        let buttonZeroWidth = NSLayoutConstraint(item: buttonZero, attribute: .Width, relatedBy: .Equal, toItem: view, attribute: .Width, multiplier: 0.50, constant: 0)
        
        
        view.addConstraints([buttonOneWidth, buttonTwoWidth, buttonThreeWidth, buttonFourWidth, buttonFiveWidth, buttonSixWidth, buttonSevenWidth, buttonEightWidth, buttonNineWidth, buttonAddWidth, buttonSubtractWidth, buttonMultiplyWidth, buttonEnterWidth, buttonZeroWidth])
        }
}