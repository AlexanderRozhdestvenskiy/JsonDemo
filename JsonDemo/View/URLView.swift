//
//  URLView.swift
//  JsonDemo
//
//  Created by Alexander Rozhdestvenskiy on 15.10.2021.
//

import SwiftUI

struct URLView: View {
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        Button("Go To Apple") {
            openURL(URL(string: "https://www.apple.com/ru/")!)
        }
    }
}

struct URLView_Previews: PreviewProvider {
    static var previews: some View {
        URLView()
    }
}
