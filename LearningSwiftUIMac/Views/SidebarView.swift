//
//  SidebarView.swift
//  LearningSwiftUIMac
//
//  Created by Gabriel Vicentin Negro on 22/07/24.
//

import SwiftUI

struct SidebarView: View {
    
    @Binding var userCreatedGroups: [TaskGroup]
    @Binding var selection: TaskSection?
    
    var body: some View {
        List(selection: $selection) {
            Section("Favorites") {
                ForEach(TaskSection.allCases) { selection in
                    Label(selection.displayName,systemImage: selection.iconName)
                        .tag(selection)
                }
            }
            Section("Your groups") {
                ForEach($userCreatedGroups) { $group in
                    HStack {
                        Image(systemName: "folder")
                        TextField("New Group", text: $group.title)
                    }
                    .tag(TaskSection.list(group))
                }
            }
        }
        .safeAreaInset(edge: .bottom) {
            Button(action: {
                withAnimation(.bouncy){
                    let newGroup = TaskGroup(title: "New Group")
                    userCreatedGroups.append(newGroup)
                }
            }, label: {
                Label("Add Group", systemImage: "plus.circle")
            })
            .buttonStyle(.borderless)
            .foregroundColor(.accentColor)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    SidebarView(userCreatedGroups: .constant(TaskGroup.examples()), selection: .constant(.all))
}
