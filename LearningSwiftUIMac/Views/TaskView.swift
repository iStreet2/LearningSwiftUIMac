//
//  TaskView.swift
//  LearningSwiftUIMac
//
//  Created by Gabriel Vicentin Negro on 23/07/24.
//

import SwiftUI

struct TaskView: View {
    
    @Binding var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "largecircle.fill.circle" : "circle")
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.17)){
                        task.isCompleted.toggle()
                    }
                }
            TextField("New Task", text: $task.title)
                .textFieldStyle(.plain)
        }
    }
}

#Preview {
    TaskView(task: .constant(Task.example()))
        .padding()
}
