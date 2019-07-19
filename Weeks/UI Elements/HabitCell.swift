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
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.blue)
            VStack(alignment: .leading) {
                HStack(alignment: .center, spacing: 2) {
                    ForEach(0 ..< 5) { item in
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.white)
                            .frame(height: 10)
                    }
                }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 3, trailing: 0))
                Text("Habit Title")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: -5, trailing: 0))
                HStack {
                    Image(systemName: "hourglass")
                        .font(.subheadline)
                        .colorInvert()
                    Text("2 days")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
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
