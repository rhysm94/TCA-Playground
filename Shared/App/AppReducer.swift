//
//  AppReducer.swift
//  TCA-Playground
//
//  Created by Rhys Morgan on 02/02/2021.
//

import ComposableArchitecture

typealias AppStore = Store<AppState, AppAction>
typealias AppReducer = Reducer<AppState, AppAction, AppEnvironment>

extension AppReducer {
	static let main = Reducer { state, action, environment in
		switch action {
		case .showAlert:
			state.alert = .init(title: "Hello", message: "World")
			return .none

		case .hideAlert:
			state.alert = nil
			return .none
		}
	}
	.debug()
}
