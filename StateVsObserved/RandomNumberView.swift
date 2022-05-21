import SwiftUI

protocol RandomNumberViewActions {
    func getRandomNumber()
}

struct RandomNumberView: View {
    var randomNumber = 0
    var actions: RandomNumberViewActions?

    var body: some View {
        VStack {
            VStack {
                Text("Random number is: \(randomNumber)")
                Button("Randomize number") {
                    actions?.getRandomNumber()
                }
            }.padding(.bottom)
        }
    }
}

struct RandomNumberView_Previews: PreviewProvider {
    static var previews: some View {
        RandomNumberView(randomNumber: 0, actions: nil)
    }
}
