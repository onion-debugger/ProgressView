import SwiftUI

struct ContentView: View {
    @State private var showProgressView = false
    
    var body: some View {
        VStack {
            Spacer()
            
            if showProgressView {
                ProgressView("Loading")
                    .tint(.purple) // change the color of the progress
                    .scaleEffect(2.5) // increase size of the progress view
            }
            
            Spacer()
            
            Button("Toggle Progress View") {
                showProgressView.toggle()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
