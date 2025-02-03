//
//  ContentView.swift
//  Navegation
//
//  Created by Francisco Manuel Gallegos Luque on 30/01/2025.
//

import SwiftUI

//struct DetailView: View {
//    var number: Int
//
//    var body: some View {
//        Text("Detail View \(number)")
//    }
//
//    init(number: Int) {
//        self.number = number
//        print("Creating detail view \(number)")
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            NavigationLink("Tap Me") {
//                DetailView(number: 556)
//            }
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            List(0..<100) { i in
//                NavigationLink("Select \(i)", value: i)
//            }
//            .navigationDestination(for: Int.self) { selection in
//                Text("You selected \(selection)")
//            }
//        }
//    }
//}

//struct ContentView: View {
//    @State private var path = [Int]()
//
//    var body: some View {
//        NavigationStack(path: $path) {
//            VStack {
//                Button("Show 32") {
//                    path = [32]
//                }
//
//                Button("Show 64") {
//                    path.append(64)
//                }
//            }
//            .navigationDestination(for: Int.self) { selection in
//                Text("You selected \(selection)")
//            }
//        }
//    }
//}

//@Observable
//class PathStore {
//    var path: [Int] {
//        didSet {
//            save()
//        }
//    }
//    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
//    
//    init() {
//        if let data = try? Data(contentsOf: savePath) {
//            if let decoded = try? JSONDecoder().decode([Int].self, from: data) {
//                path = decoded
//                return
//            }
//            path = []
//        }
//        
//        func save() {
//            do {
//                let data = try JSONEncoder().encode(path)
//                try data.write(to: savePath)
//            } catch {
//                print("Fail")
//            }
//        }
//    }
//}
//
//struct DetailView: View {
//    var number: Int
//    @Binding var path: NavigationPath
//    
//    var body: some View {
//        NavigationLink("Go to random number", value: Int.random(in: 1...1000))
//            .navigationTitle("Number: \(number)")
//            .toolbar {
//                Button("Home") {
//                    path = NavigationPath()                }
//            }
//    }
//}

//struct ContentView: View {
//    @State private var path = NavigationPath()
//    
//    var body: some View {
//        NavigationStack(path: $path) {
//            DetailView(number: 0, path: $path)
//                           .navigationDestination(for: Int.self) { i in
//                               DetailView(number: i, path: $path)
//                           }
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            List(0..<100) { i in
//                Text("Row \(i)")
//            }
//            .navigationTitle("Title goes here")
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbarBackground(.blue)
//            .toolbarColorScheme(.dark)
//            .toolbar(.hidden)
//        }
//    }
//}

//struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            Text("Hello")
//                .toolbar {
//                    ToolbarItemGroup(placement: .topBarLeading) {
//                            Button("Tap Me") {
//                                // button action here
//                            }
//
//                            Button("Tap Me 2") {
//                                // button action here
//                            }
//                        }
//                }
//                
//        }
//    }
//}

struct ContentView: View {
    @State private var title = "SwiftUI"
    
    var body: some View {
        NavigationStack {
            Text("Hello, world!")
                            .navigationTitle($title)
                            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    ContentView()
}
