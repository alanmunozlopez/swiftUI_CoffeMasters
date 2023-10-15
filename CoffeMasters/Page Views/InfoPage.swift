//
//  InfoPage.swift
//  CoffeMasters
//
//  Created by Alan Munoz Lopez on 30-08-23.
//

import SwiftUI
import WebKit

class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        print(message.body)
    }
}

struct WebView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
                config.userContentController.add(WebInterfaceDialogs() , name: "alert")
        let webView = WKWebView(frame: .zero, configuration: config)
        
        return webView // The UIKIT View
    }
        
    func updateUIView(_ webView: WKWebView, context: Context) {
        let url = URL(string: "https://firtman.github.io/coffeemasters/webapp")!
        let request = URLRequest(url: url)
        webView.load(request)
    }
    
    func executeJavascript(webView: WKWebView) {
        webView.evaluateJavaScript("alert('Hello Guys! AML')")
    }
}

struct InfoPage: View {
    var body: some View {
        WebView()
    }
}

struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        InfoPage()
    }
}
