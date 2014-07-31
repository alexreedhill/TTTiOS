//
//  Menu.swift
//  TTTiOS
//
//  Created by Alex Hill on 7/31/14.
//  Copyright (c) 2014 Alex Hill. All rights reserved.
//

import Foundation

class Menu : Equatable {
    var character : String
    var aiType : String
    var firstPlayer : String
    
    init() {
        self.character = "X"
        self.aiType = "minimax"
        self.firstPlayer = "human"
    }
    
    struct Static {
        static var instance: Menu?
    }
    
    class var sharedInstance: Menu {
        
    if !Static.instance {
        Static.instance = Menu()
    }
        return Static.instance!
    }
}

func == (lhs: Menu, rhs: Menu) -> Bool {
    return lhs === rhs
}