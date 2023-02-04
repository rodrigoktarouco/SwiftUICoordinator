//
//  SheetCoordinator.swift
//  SwiftUICoordinator
//
//  Created by Rodrigo Kroef Tarouco on 04/02/23.
//

import SwiftUI

class SheetCoordinator: BaseCoordinator {
    @Published var sheet: Sheet?

    func present(sheet: Sheet) {
        self.sheet = sheet
    }

    func dismiss() {
        self.sheet = nil
    }

    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .lemon:
            NavigationStack {
                LemonView()
            }
        }
    }
}
