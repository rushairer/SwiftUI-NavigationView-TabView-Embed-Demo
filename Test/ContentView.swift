//
//  ContentView.swift
//  Test
//
//  Created by Abenx on 2021/4/24.
//

import SwiftUI
import CoreData

struct ContentView: View {    
    @State var tabTag: TabTag = .tab1
    
    enum TabTag: Int {
        case tab1 = 1
        case tab2 = 2
        
        var title: String {
            switch self {
            case .tab1: return "Tab1 Title"
            case .tab2: return "Tab2 Title"
            }
        }
    }
    
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
                .navigationTitle("")
                .tabItem {
                    Text("Tab Label 1")
                }.tag(TabTag.tab1)
                
                List {
                    NavigationLink(
                        destination: Text("Tab Content 2"),
                        label: {
                            Text("Tab Content 2")
                        })
                }
                .navigationTitle("Tab2")
                .tabItem {
                    Text("Tab Label 2")
                }.tag(TabTag.tab2)
            }
            .navigationTitle("\(tabTag.title)")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
