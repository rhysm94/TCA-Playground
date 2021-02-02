//
//  ContentView.swift
//  Shared
//
//  Created by Rhys Morgan on 02/02/2021.
//

import ComposableArchitecture
import SwiftUI

class ContentViewModel: ObservableObject {
	private let viewStore: ViewStore<AppState, AppAction>

	init(store: AppStore) {
		self.viewStore = ViewStore(store)
	}

	func showAlert() {
		viewStore.send(.showAlert)
	}

	var alert: Binding<AppState.Alert?> {
		viewStore.binding(get: \.alert, send: AppAction.hideAlert)
	}
}

struct ContentView: View {
	@ObservedObject var viewModel: ContentViewModel

	var body: some View {
		Button("Show alert") {
			viewModel.showAlert()
		}
		.alert(item: viewModel.alert) { alert in
			Alert(
				title: Text(alert.title),
				message: Text(alert.message),
				dismissButton: .default(Text("OK"))
			)
		}
		.padding()
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(
			viewModel: ContentViewModel(
				store: Store(
					initialState: AppState(),
					reducer: .main,
					environment: AppEnvironment()
				)
			)
		)
	}
}
