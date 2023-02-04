//
//  FullScreenCoordinator.swift
//  SwiftUICoordinator
//
//  Created by Rodrigo Kroef Tarouco on 04/02/23.
//

import SwiftUI

class FullScreenCoordinator: BaseCoordinator {
    @Published var fulScreenCover: FullScreenCover?

    func present(fullScreenCover: FullScreenCover) {
        self.fulScreenCover = fullScreenCover
    }

    func dismiss() {
        self.fulScreenCover = nil
    }

    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .olive:
            NavigationStack {
                OliveView()
            }
        }
    }
}
