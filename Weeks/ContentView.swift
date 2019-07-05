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
                ScrollView {
                    ForEach (0 ..< 10) { item in
                        HStack {
                            HabitCell()
                                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                                .frame(minWidth: 0, maxWidth: .infinity)
                            HabitCell()
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                        }
                    }
                        .navigationBarTitle(Text("Habits"))
                }
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
