//
//  HabitCellView.swift
//  Weeks
//
//  Created by Zach on 6/29/19.
//  Copyright © 2019 Zachary Williams. All rights reserved.
//

import SwiftUI

struct HabitCellView : View {
    var body: some View {
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
                        .font(.body)
                        .colorInvert()
                    Text("2 days")
                        .font(.body)
                        .bold()
                        .color(Color.white)
                }
                HStack(alignment: .bottom) {
                    ForEach(0 ..< 7) { item in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: 20, height: 30)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -5))
                    }
                    Text("7 credits")
                        .font(.body)
                        .bold()
                        .color(Color.white)
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    Spacer()
                }
            }
                .padding()
        }
    }
}

#if DEBUG
struct HabitCellView_Previews : PreviewProvider {
    static var previews: some View {
        HabitCellView()
    }
}
#endif
