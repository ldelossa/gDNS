//
//  gDNS.swift
//  gDNS
//
//  Created by DeLosSantos, Louis on 6/19/17.
//  Copyright © 2017 ldelossa. All rights reserved.
//

import Foundation

protocol gDNSDelegate {
    
    func getConfiguredPaths() -> [String]
    func configurePaths(_: [String]) -> ()
    
}

class gDNS {
    var healthy = "healthy"
    
    var configuredPaths = [String]()
    
    func getConfiguredPaths() -> [String] {
        return self.configuredPaths
    }
    
    func configurePaths(_ pathArray: [String]) {
        for path in pathArray {
            self.configuredPaths.append(path)
        }
    }
    
    
}
