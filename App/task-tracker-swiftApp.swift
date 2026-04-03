import SwiftUI
import SwiftData

@main
struct task-tracker-swiftApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
        // Save in cloud your tasks
        .modelContainer(for: TaskView.self)
    }
}
