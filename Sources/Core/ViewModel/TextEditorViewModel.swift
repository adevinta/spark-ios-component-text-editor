//
//  TextEditorViewModel.swift
//  SparkTextEditor
//
//  Created by robin.lemaire on 19/07/2024.
//  Copyright © 2024 Adevinta. All rights reserved.
//

import SwiftUI
import SparkTheming

final class TextEditorViewModel: ObservableObject {

    // MARK: - Public properties

    // TODO: If Needed

    // MARK: - Private properties

    private let theme: Theme
    private var intent: TextEditorIntent

    // MARK: - Initialization

    init(
        theme: Theme,
        intent: TextEditorIntent = .primary
    ) {
        self.theme = theme
        self.intent = intent
    }

    // MARK: - Setter

    // TODO: If Needed

    // MARK: - Getter

    // TODO: If Needed
}
