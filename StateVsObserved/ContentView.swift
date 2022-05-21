//
//  ContentView.swift
//  StateVsObserved
//
//  Created by Sven Svensson on 21/05/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ViewModel = .init()

    var body: some View {
        VStack {
            RandomNumberView(randomNumber: viewModel.random, actions: viewModel)
            CounterView(count: viewModel.count, actions: viewModel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
