//
//  TCA_PlaygroundApp.swift
//  Shared
//
//  Created by Rhys Morgan on 02/02/2021.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCA_PlaygroundApp: App {
	let store = AppStore(
		initialState: AppState(),
		reducer: .main,
		environment: AppEnvironment()
	)

    var body: some Scene {
        WindowGroup {
			ContentView(viewModel: ContentViewModel(store: store))
        }
    }
}
