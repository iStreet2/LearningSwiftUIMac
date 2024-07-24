//
//  TaskListView.swift
//  LearningSwiftUIMac
//
//  Created by Gabriel Vicentin Negro on 23/07/24.
//

import SwiftUI

struct TaskListView: View {
    var title: String
    @Binding var tasks: [Task]
    
    var body: some View {
        List($tasks) { $task in
            TaskView(task: $task)
        }
        .toolbar {
            Button(action: {
                withAnimation(.bouncy){
                    tasks.append(Task(title: "New Task"))
                }
            }, label: {
                Label("Add New Task", systemImage: "plus")
            })
        }
    }
}

#Preview {
    TaskListView(title: "All", tasks: .constant(Task.examples()))
}
