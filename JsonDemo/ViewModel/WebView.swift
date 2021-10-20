//
//  WebView.swift
//  JsonDemo
//
//  Created by Alexander Rozhdestvenskiy on 16.10.2021.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        
        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        guard let myURL = url else { return }
        
        let request = URLRequest(url: myURL)
        
        uiView.load(request)
    }
}
