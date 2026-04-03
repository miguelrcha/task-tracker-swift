//
//  TaskView.swift
//  task-tracker-swift
//
//  Created by miguel rocha on 03/04/26.
//

import Foundation
import SwiftData

@Model
class TaskView {
    var id = UUID()
    var title: String
    var currentDate : Date = Date()
    var isCompleted: Bool = false
    
    // @Model requires init self.var
    init(id: UUID = UUID(), title: String, isCompleted: Bool = false) {
        self.id = id
        self.title = title
        self.currentDate = Date()
        self.isCompleted = isCompleted
    }
}
