//
//  TextEditorViewSnapshotTests.swift
//  SparkTextEditorTests
//
//  Created by robin.lemaire on 19/07/2024.
//  Copyright © 2024 Adevinta. All rights reserved.
//

import XCTest
import SwiftUI
@testable import SparkTheme
@testable import SparkTheming
@_spi(SI_SPI) @testable import SparkCommon
@_spi(SI_SPI) @testable import SparkCommonTesting
@_spi(SI_SPI) @testable import SparkCommonSnapshotTesting

@testable import SparkTextEditor

final class TextEditorViewSnapshotTests: SwiftUIComponentSnapshotTestCase {

    // MARK: - Properties

    private let theme: Theme = SparkTheme.shared

    // MARK: - Tests

    func test() {
        let scenarios = TextEditorScenarioSnapshotTests.allCases

        for scenario in scenarios {
            let configurations = scenario.configuration(isSwiftUIComponent: true)
            for configuration in configurations {
                let view = TextEditorView(
                    theme: self.theme,
                    intent: configuration.intent
                )
                    .fixedSize()

                self.assertSnapshot(
                    matching: view,
                    modes: configuration.modes,
                    sizes: configuration.sizes,
                    testName: configuration.testName()
                )
            }
        }
    }
}
