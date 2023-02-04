//
//  BaseCoordinator.swift
//  SwiftUICoordinator
//
//  Created by Rodrigo Kroef Tarouco on 04/02/23.
//

import SwiftUI

class BaseCoordinator: ObservableObject, Coordinator {

    @Published var path = NavigationPath()

    func pop() {
        path.removeLast()
    }

    func popToRoot() {
        path.removeLast(path.count)
    }

    func push(_ page: Page) {
        path.append(page)
    }

    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .apple:
            AppleView()
        case .banana:
            BananaView()
        case .carrot:
            CarrotView()
        }
    }
}



