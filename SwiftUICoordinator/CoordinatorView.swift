//
//  CoordinatorView.swift
//  SwiftUICoordinator
//
//  Created by Rodrigo Kroef Tarouco on 04/02/23.
//

import SwiftUI

struct CoordinatorView: View {

    @StateObject private var coordinator = BaseCoordinator()
    @StateObject private var sheetCoordinator = SheetCoordinator()
    @StateObject private var fullScreenCoverCoordiantor = FullScreenCoordinator()

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(page: .apple)
                .navigationDestination(for: Page.self) { page in
                    coordinator.build(page: page)
                }
                .sheet(item: $sheetCoordinator.sheet) { sheet in
                    sheetCoordinator.build(sheet: sheet)
                }
                .fullScreenCover(item: $fullScreenCoverCoordiantor.fulScreenCover) { fullScreenCover in
                    fullScreenCoverCoordiantor.build(fullScreenCover: fullScreenCover)
                }
        }
        .environmentObject(coordinator)
        .environmentObject(sheetCoordinator)
        .environmentObject(fullScreenCoverCoordiantor)
    }
}

struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView()
    }
}
