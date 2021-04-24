//
//  ContentViewTemp.swift
//  Test
//
//  Created by Abenx on 2021/4/25.
//

import SwiftUI

struct ContentViewTemp: View {
    @State var tabTag = 1
    
    var body: some View {
        NavigationView {
            TabView(selection: $tabTag) {
                List {
                    
                    NavigationLink(
                        destination: Text("Tab Content 1"),
                        label: {
                            Text("Tab Content 1")
                        })
                }
                .navigationTitle("Tab1")
                .tabItem { Text("Tab Label 1") }.tag(1)
                
                List {
                    
                    NavigationLink(
                        destination: Text("Tab Content 2"),
                        label: {
                            Text("Tab Content 2")
                        })
                }
                .navigationTitle("Tab2")
                .tabItem { Text("Tab Label 2") }.tag(2)
            }
        }
    }
}

struct ContentViewTemp_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewTemp()
    }
}
