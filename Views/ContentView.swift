
import SwiftUI
import SwiftData

struct ContentView: View {
    
    // @State variavel local
    @State private var taskCount: Int = 0
    @Query private var tasks: [TaskView]
    @Environment(\.modelContext) private var modelContext
    @State private var newTaskTitle = ""
    var body: some View {
        VStack {

            Text("Task Tracker built with Swift")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom)
            
            // HStack = Div/Sections
            HStack {
                TextField("New task", text: $newTaskTitle)
                    .textFieldStyle(.roundedBorder)
                Button("Add task") {
                    addTask()
                }
                .buttonStyle(.borderedProminent)
                // Caso esteja vazio, botao disabled
                .disabled(newTaskTitle.isEmpty)
            }
            
            // List of tasks
            List {
                ForEach(tasks) { task in
                    HStack {
                        Text(task.title)
                            .strikethrough(task.isCompleted)
                        Image(systemName: task.isCompleted ? "checkmark.seal.fill" : "circle")
                    }
                    // func task = conclueded
                    .onTapGesture {apGesture in
                        toggleTask(task)
                    }
                }
                // func delete task
                .onDelete(perform: deleteTask)
            }
            
        }
        .padding()
    }
    // func add task
    private func addTask() {
        let newTask = TaskView(title: newTaskTitle)
        modelContext.insert(newTask) // save it to the database
        print("Added task -> \(taskCount) \(newTask.title)") // debug output
        newTaskTitle = ""
    }
    // func conclueded the task
    private func toggleTask(_ task: TaskView) {
        task.isCompleted.toggle()
    }
    // func deletes the task by swiping left effect
    private func deleteTask(at offsets: IndexSet) {
        for index in offsets {
            modelContext.delete(tasks[index])
        }
    }
}

#Preview {
    ContentView()
}
