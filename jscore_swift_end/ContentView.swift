//
//  ContentView.swift
//  jscore_swift_end
//
//  Created by sun on 19/3/23.
//

import SwiftUI
import JavaScriptCore

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
           let jscontext = JSContext()
           jscontext?.setObject(DeviceInfo.self, forKeyedSubscript: "DeviceInfo" as (NSCopying & NSObjectProtocol))

          let jsapth = Bundle.main.path(forResource: "use", ofType: "js")
          let jscontents = try! String(contentsOfFile: jsapth!)
          jscontext?.evaluateScript(jscontents)

          let f1 = jscontext?.objectForKeyedSubscript("f1")
          print(f1?.call(withArguments: []))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
