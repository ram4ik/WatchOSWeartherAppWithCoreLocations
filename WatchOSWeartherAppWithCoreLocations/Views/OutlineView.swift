//
//  OutlineView.swift
//  WatchOSWeartherAppWithCoreLocations
//
//  Created by ramil on 09.03.2021.
//

import SwiftUI

struct OutlineView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue, Color.blue.opacity(0.4)]
            ), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 4)
    }
}

struct OutlineView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineView()
    }
}
