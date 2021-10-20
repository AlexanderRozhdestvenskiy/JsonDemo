//
//  URLView.swift
//  JsonDemo
//
//  Created by Alexander Rozhdestvenskiy on 15.10.2021.
//

import SwiftUI

struct URLView: View {
    
    var body: some View {
        NavigationView {
            WebView(url: URL(string: "https://yandex.ru"))
                .navigationTitle("Yandex")
        }
    }
}

struct URLView_Previews: PreviewProvider {
    static var previews: some View {
        URLView()
    }
}
