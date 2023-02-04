//
//  OliveView.swift
//  SwiftUICoordinator
//
//  Created by Alex Nagy on 29.01.2023.
//

import SwiftUI

struct OliveView: View {
    
    @EnvironmentObject private var fullScreenCoverCoordiantor: FullScreenCoordinator

    var body: some View {
        List {
            Button("Dismiss") {
                fullScreenCoverCoordiantor.dismiss()
            }
        }
        .navigationTitle("🫒")
    }
}

struct OliveView_Previews: PreviewProvider {
    static var previews: some View {
        OliveView()
    }
}
