import UIKit
import Foundation
var date = Date()
date.timeIntervalSince1970
date.description
date.formatted(date: .numeric, time: .shortened)

func formatted(as format: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    return dateFormatter.string(from: self)
}

var a = Formatter()


