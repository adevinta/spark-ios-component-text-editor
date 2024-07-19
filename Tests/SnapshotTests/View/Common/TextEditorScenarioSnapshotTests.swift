//
//  TextEditorScenarioSnapshotTestsTests.swift
//  SparkTextEditorSnapshotTests
//
//  Created by robin.lemaire on 19/07/2024.
//  Copyright © 2024 Adevinta. All rights reserved.
//

@testable import SparkTextEditor
@_spi(SI_SPI) @testable import SparkCommonTesting
@_spi(SI_SPI) @testable import SparkCommonSnapshotTesting
import UIKit
import SwiftUI

enum TextEditorScenarioSnapshotTests: String, CaseIterable {
    case test1

    // MARK: - Type Alias

    typealias Constants = ComponentSnapshotTestConstants

    // MARK: - Configurations

    func configuration(isSwiftUIComponent: Bool) -> [TextEditorConfigurationSnapshotTests] {
        switch self {
        case .test1:
            return self.test1(isSwiftUIComponent: isSwiftUIComponent)
        }
    }

    // MARK: - Scenarios

    /// Test 1
    ///
    /// Description: TODO:
    ///
    /// Content:
    ///  - TODO:
    private func test1(isSwiftUIComponent: Bool) -> [TextEditorConfigurationSnapshotTests] {
        let intents = TextEditorIntent.allCases

        return intents.map {
            .init(
                scenario: self,
                intent: $0,
                modes: Constants.Modes.all,
                sizes: Constants.Sizes.default
            )
        }
    }
}
