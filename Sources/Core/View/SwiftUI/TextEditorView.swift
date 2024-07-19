//
//  TextEditorView.swift
//  SparkTextEditor
//
//  Created by robin.lemaire on 19/07/2024.
//  Copyright © 2024 Adevinta. All rights reserved.
//

import SwiftUI
import SparkTheming
@_spi(SI_SPI) import SparkCommon

/// The SwiftUI version for the texteditor
public struct TextEditorView: View {

    // MARK: - Private Properties

    @ObservedObject private var viewModel: TextEditorViewModel

    // MARK: - Initialization

    /// Initialize a new texteditor.
    /// - Parameters:
    ///   - theme: The spark theme.
    ///   - intent: The intent of the texteditor.
    public init(
        theme: Theme,
        intent: TextEditorIntent
    ) {
        self.viewModel = TextEditorViewModel(
            theme: theme,
            intent: intent
        )
    }

    // MARK: - View

    public var body: some View {
        Text("Hello TextEditor")
            .accessibilityIdentifier(TextEditorAccessibilityIdentifier.view)
    }

    // MARK: - Modifier

    // TODO:
}
