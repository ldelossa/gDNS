//
//  PreferencesController.swift
//  gDNS
//
//  Created by DeLosSantos, Louis on 6/19/17.
//  Copyright © 2017 ldelossa. All rights reserved.
//

import Cocoa

class PreferencesController: NSViewController {
    var gDNSDelegate: gDNSDelegate?
    
    // Handle UI
    @IBOutlet weak var pathsTextField: NSTextField!
    
    
    @IBAction func getConfiguredPathsbutton(_ sender: Any) {
        
    }
    
    @IBOutlet weak var configuredPathsTextField: NSTextField!
    
    @IBAction func configurePathButton(_ sender: Any) {
        
        var pathArrays = [String]()
        let path = self.configuredPathsTextField.stringValue
        pathArrays.append(path)
        
        self.gDNSDelegate?.configurePaths(pathArrays)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
