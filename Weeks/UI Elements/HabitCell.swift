//
//  HabitCellView.swift
//  Weeks
//
//  Created by Zach on 6/29/19.
//  Copyright © 2019 Zachary Williams. All rights reserved.
//

import SwiftUI

struct HabitCell : View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
            VStack(alignment: .leading) {
                HStack(alignment: .center, spacing: 2) {
                    ForEach(0 ..< 5) { item in
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.white)
                            .frame(height: 24)
                    }
                }
                Divider()
                Text("Habit Title")
                    .font(.headline)
                    .color(Color.white)
                HStack {
                    Image(systemName: "hourglass")
                        .font(.subheadline)
                        .colorInvert()
                    Text("2 days")
                        .font(.subheadline)
                        .color(Color.white)
                }
            }
                .padding()
        }
    }
}

#if DEBUG
struct HabitCellView_Previews : PreviewProvider {
    static var previews: some View {
        HabitCell()
    }
}
#endif
