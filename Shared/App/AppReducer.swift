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
		return .none
	}
}
