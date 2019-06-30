//
//  ContentView.swift
//  Weeks
//
//  Created by Zachary Williams on 6/7/19.
//  Copyright © 2019 Zachary Williams. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        HStack {
            NavigationView {
                List {
                    HabitCellView()
                    HabitCellView()
                    HabitCellView()
                }
                    .listStyle(.grouped)
                    .navigationBarTitle(Text("Habits"))
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
