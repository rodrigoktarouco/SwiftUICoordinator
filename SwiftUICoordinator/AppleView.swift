//
//  AppleView.swift
//  SwiftUICoordinator
//
//  Created by Alex Nagy on 29.01.2023.
//

import SwiftUI

struct AppleView: View {

    @EnvironmentObject private var coordinator: BaseCoordinator
    @EnvironmentObject private var sheetCoordinator: SheetCoordinator
    @EnvironmentObject private var fullScreenCoverCoordiantor: FullScreenCoordinator

    var body: some View {
        List {
            Button("Push 🍌") {
                coordinator.push(.banana)
            }
            Button("Present 🍋") {
                sheetCoordinator.present(sheet: .lemon)
                
            }
            Button("Present 🫒") {
                fullScreenCoverCoordiantor.present(fullScreenCover: .olive)
            }
        }
        .navigationTitle("🍎")
    }
}

struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView()
    }
}
