//
//  MenuController.swift
//  TTTiOS
//
//  Created by Alex Hill on 7/31/14.
//  Copyright (c) 2014 Alex Hill. All rights reserved.
//

import UIKit

class MenuController: UIViewController {
    @IBOutlet strong var characterControl: UISegmentedControl!
    @IBOutlet strong var aiTypeControl: UISegmentedControl!
    @IBOutlet strong var firstPlayerControl: UISegmentedControl!
    
    
    @IBAction func playGame(sender: AnyObject) {
        let menu = Menu.sharedInstance
        menu.character = getSegmentedValue(characterControl)
        menu.aiType = getSegmentedValue(aiTypeControl).lowercaseString
        menu.firstPlayer = getSegmentedValue(firstPlayerControl).lowercaseString
        let gameController = self.storyboard.instantiateViewControllerWithIdentifier("GameController") as GameController
        self.presentViewController(gameController, animated: true, completion: nil)
    }
    
    func getSegmentedValue(control : UISegmentedControl) -> String {
        let index = control.selectedSegmentIndex
        return control.titleForSegmentAtIndex(index)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let menu = Menu.sharedInstance
        setCharacterControl(menu)
        setAiTypeControl(menu)
        setFirstPlayerControl(menu)
    }
    
    func setCharacterControl(menu : Menu) {
        if(menu.character == "X") {
            self.characterControl.selectedSegmentIndex = 0
        } else {
            self.characterControl.selectedSegmentIndex = 1
        }
    }
    
    func setAiTypeControl(menu : Menu) {
        if(menu.aiType == "minimax") {
            self.aiTypeControl.selectedSegmentIndex = 0
        } else {
            self.aiTypeControl.selectedSegmentIndex = 1
        }
    }
    
    func setFirstPlayerControl(menu : Menu) {
        if(menu.firstPlayer == "human") {
            self.firstPlayerControl.selectedSegmentIndex = 0
        } else {
            self.firstPlayerControl.selectedSegmentIndex = 1
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
