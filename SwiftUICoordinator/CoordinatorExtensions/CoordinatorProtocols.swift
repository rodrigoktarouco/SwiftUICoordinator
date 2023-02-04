//
//  CoordinatorProtocols.swift
//  SwiftUICoordinator
//
//  Created by Rodrigo Kroef Tarouco on 04/02/23.
//

import SwiftUI

protocol Coordinator {
    func push(_ page: Page)
    func pop()
    func popToRoot()
}
