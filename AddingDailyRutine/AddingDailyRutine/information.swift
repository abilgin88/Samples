//
//  information.swift
//  AddingDailyRutine
//
//  Created by Abdullah Bilgin on 6/1/23.
//

import Foundation

struct information {
    var name: String
    var Surname: String
    var Age: Int
    var date: Date
}

extension information {
    static let People = [
        information(name: "Abdullah", Surname: "Bilgin", Age: 34, date: .now),
        information(name: "Ceylan", Surname: "Bilgin", Age: 35, date: .now),
        information(name: "Nurdan", Surname: "Bilgin", Age: 8, date: .now),
        information(name: "Ahmed Orhan", Surname: "Bilgin", Age: 6, date: .now)
    ]
}
