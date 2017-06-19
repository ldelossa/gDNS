//
//  StatusMenuController.swift
//  gDNS
//
//  Created by louis on 6/18/17.
//  Copyright © 2017 ldelossa. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    
    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    override func awakeFromNib() {
        let statusItemButton = statusItem.button!
        statusItemButton.title = "gDNS"
        
        statusItem.menu = self.statusMenu
    }
}
