//
//  circle.swift
//  shapes
//
//  Created by Abdullah Bilgin on 4/6/23.
//

import SwiftUI

struct circle: View {
    var body: some View {
        Circle()
        .frame(width: 100, height: 100)
    }
}

struct circle_Previews: PreviewProvider {
    static var previews: some View {
        circle()
    }
}
