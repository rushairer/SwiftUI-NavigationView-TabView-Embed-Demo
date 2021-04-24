//
//  ContentViewOld.swift
//  Test
//
//  Created by Abenx on 2021/4/24.
//

import SwiftUI

struct ContentViewOld: View {
    @State var tabTag = 1
    
    var body: some View {
        
        TabView(selection: $tabTag) {
            NavigationView {
                List {
                    NavigationLink(
                        destination: Text("Tab Content 1"),
                        label: {
                            Text("Tab Content 1")
                        })
                }
                .navigationTitle("Tab1")
            }
            .tabItem {
                Text("Tab Label 1")
            }
            .tag(1)
            
            NavigationView {
                List {
                    NavigationLink(
                        destination: Text("Tab Content 2"),
                        label: {
                            Text("Tab Content 2")
                        })
                }
                .navigationTitle("Tab2")
            }
            .tabItem {
                Text("Tab Label 2")
            }
            .tag(2)
        }
        .navigationTitle("Tab\(tabTag)")
    }
}

struct ContentViewOld_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewOld()
    }
}
