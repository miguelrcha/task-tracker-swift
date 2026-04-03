import SwiftData
import SwiftUI

struct LoginView: View {
    @State private var isAnimating = false

        var body: some View {
            ZStack {
                Color.white

                VStack(spacing: 20) {
                    
                    Text("Task Tracker")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)

                    Text("Built with Swift")
                        .font(.subheadline)
                        .foregroundColor(.gray)

                    // Loader effect
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .black))
                        .scaleEffect(1.5)
                        .padding(.top, 20)
                }
            }
        }
}
