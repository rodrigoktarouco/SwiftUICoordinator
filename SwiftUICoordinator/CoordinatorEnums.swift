//
//  CoordinatorEnums.swift
//  SwiftUICoordinator
//
//  Created by Rodrigo Kroef Tarouco on 04/02/23.
//

import SwiftUI

enum Page: String, Identifiable {
    case apple, banana, carrot

    var id: String {
        self.rawValue
    }
}

enum Sheet: String, Identifiable {
    case lemon

    var id: String {
        self.rawValue
    }
}

enum FullScreenCover: String, Identifiable {
    case olive

    var id: String {
        self.rawValue
    }
}
