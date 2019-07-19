//
//  HabitViewModel.swift
//  Weeks
//
//  Created by Zach on 7/5/19.
//  Copyright © 2019 Zachary Williams. All rights reserved.
//

import Foundation
import SwiftUI

struct HabitViewModel: Identifiable {
    
    // MARK: Attributes
    
    /// A unique identifier.
    var id = UUID()
    
    /// The name of the habit displayed on the habit cell.
    let name: String
    
    /// The number of credits available per cooldown period.
    let creditCount: Int
    
    /// The time (in days) before credits refill.
    let cooldownTime: Int
    
}
