//
//  LemonView.swift
//  SwiftUICoordinator
//
//  Created by Alex Nagy on 29.01.2023.
//

import SwiftUI

struct LemonView: View {

    @EnvironmentObject private var sheetCoordinator: SheetCoordinator

    
    var body: some View {
        List {
            Button("Dismiss") {
                sheetCoordinator.dismiss()
            }
        }
        .navigationTitle("🍋")
    }
}

struct LemonView_Previews: PreviewProvider {
    static var previews: some View {
        LemonView()
    }
}
