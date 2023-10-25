//
//  ContentView.swift
//  AppleFollowAlong
//
//  Created by Abdisatar Mohamed on 03/09/2023.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
