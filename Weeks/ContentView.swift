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
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.blue)
                        VStack {
                            HStack(alignment: .center) {
                                Text("Habit Title")
                                    .font(.title)
                                    .bold()
                                    .color(Color.white)
                                Spacer()
                                Image(systemName: "hourglass")
                                    .font(.subheadline)
                                    .colorInvert()
                                Text("2 days")
                                    .font(.subheadline)
                                    .bold()
                                    .color(Color.white)
                            }
                            HStack(alignment: .bottom) {
                                ForEach(0 ..< 5) { item in
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color.white)
                                        .frame(width: 10, height: 30)
                                }
                                Text("5 credits")
                                    .font(.subheadline)
                                    .bold()
                                    .color(Color.white)
                                Spacer()
                            }
                        }
                            .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
                    }
                }
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
