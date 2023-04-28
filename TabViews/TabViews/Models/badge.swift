//
//  badge.swift
//  TabViews
//
//  Created by Abdullah Bilgin on 4/28/23.
//

import Foundation

struct Badge {
    var received: Int = 0
    
    mutating func inc() {
        received += 1
    }
    
    func send(amount: Int) -> Int {
        let remain = received - amount
        return remain
    }
}
