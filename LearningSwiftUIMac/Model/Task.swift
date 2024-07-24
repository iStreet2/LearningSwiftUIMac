//
//  Task.swift
//  LearningSwiftUIMac
//
//  Created by Gabriel Vicentin Negro on 22/07/24.
//

import Foundation


struct Task: Identifiable, Hashable {
    
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
    var dueDate: Date = Date()
    var description: String? = nil
    
    
    static func example() -> Task {
        return Task(title: "Idk")
    }
    
    
    static func examples() -> [Task] {
        [
            Task(title: "Go to the gym!"),
            Task(title: "Play Valorant!", isCompleted: true , dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!),
            Task(title: "Code for MacOS", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!, description: "I'm making an app for MacOS to test my skills for this platform")
        ]
    }
    
}
