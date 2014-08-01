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
        setControl(self.characterControl, menuValue: menu.character, defaultValue: "X")
        setControl(self.aiTypeControl, menuValue: menu.aiType, defaultValue: "minimax")
        setControl(self.firstPlayerControl, menuValue: menu.firstPlayer, defaultValue: "human")
    }
    
    func setControl(control : UISegmentedControl, menuValue :String, defaultValue : String) {
        if(menuValue == defaultValue) {
            control.selectedSegmentIndex = 0
        } else {
            control.selectedSegmentIndex = 1
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
