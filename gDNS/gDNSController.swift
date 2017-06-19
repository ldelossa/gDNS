//
//  gDNSController.swift
//  gDNS
//
//  Created by DeLosSantos, Louis on 6/19/17.
//  Copyright © 2017 ldelossa. All rights reserved.
//

import Cocoa

class gDNSController: NSObject, gDNSDelegate {
    var _gDNS: gDNS
    
    @IBOutlet weak var statusMenu: NSMenu!
    
    override init() {
        self._gDNS = gDNS()
        print("gDNS: " + self._gDNS.healthy)
        print("Done running gDNSController init")
    }
    
    // Delegate methods 
    func getConfiguredPaths() -> [String] {
        return self._gDNS.configuredPaths
    }
    
    func configurePaths(_ pathsArray: [String]) {
        self._gDNS.configurePaths(pathsArray)
    }
    
}
