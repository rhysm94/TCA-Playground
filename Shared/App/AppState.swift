//
//  AppState.swift
//  TCA-Playground
//
//  Created by Rhys Morgan on 02/02/2021.
//

import Foundation

struct AppState: Equatable {
	struct Alert: Equatable, Identifiable {
		let id = UUID()
		var title: String
		var message: String
	}

	var alert: Alert?
}
