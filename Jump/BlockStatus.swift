//
//  BlockStatus.swift
//  Jump
//
//  Created by Malarvizhy Soupramanien on 7/24/15.
//  Copyright © 2015 CB. All rights reserved.
//

import Foundation

class BlockStatus {
    var isRunning = false
    var timeGapforNextRun = UInt32(0)
    var currentInterval = UInt32(0)
    init(isRunning:Bool, timeGapforNextRun:UInt32, currentInterval:UInt32) {
        self.isRunning = isRunning
        self.timeGapforNextRun = timeGapforNextRun
        self.currentInterval = currentInterval
    }
    
    func shouldRunBlock() -> Bool {
        return self.currentInterval > self.timeGapforNextRun
    }
}
