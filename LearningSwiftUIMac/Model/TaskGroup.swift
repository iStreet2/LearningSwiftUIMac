//
//  TaskGroup.swift
//  LearningSwiftUIMac
//
//  Created by Gabriel Vicentin Negro on 22/07/24.
//

import Foundation

struct TaskGroup: Identifiable, Hashable {
    let id = UUID()
    var title: String
    let creationDate: Date = Date()
    var tasks: [Task] = []
    
    
    static func example() -> TaskGroup {
        let task1 = Task(title: "Call my girlfriend")
        let task2 = Task(title: "Cook dinner")
        let task3 = Task(title: "Code MacOs App with SwiftUI")
        
        let group = TaskGroup(title: "My Tasks!", tasks: [task1, task2, task3])
        return group
    }
    
    static func examples() -> [TaskGroup] {
        let group1 = TaskGroup.example()
        let group2 = TaskGroup(title: "Idk what to write anymore")
        
        return [group1, group2]
    }
    
    
    static func == (lhs: TaskGroup, rhs: TaskGroup) -> Bool {
        lhs.id == rhs.id
    }
    
}
