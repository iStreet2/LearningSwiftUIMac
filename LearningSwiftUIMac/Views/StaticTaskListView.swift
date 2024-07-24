//
//  SidebarView.swift
//  LearningSwiftUIMac
//
//  Created by Gabriel Vicentin Negro on 22/07/24.
//

import SwiftUI

struct StaticTaskListView: View {
    
    
    var title: String
    var tasks: [Task]
    
    var body: some View {
        List(tasks) { task in
            HStack {
                Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                Text(task.title)
            }
        }
    }
}

#Preview {
    StaticTaskListView(title: "All", tasks: Task.examples())
}
