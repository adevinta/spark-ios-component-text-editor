//
//  TextEditorConfigurationSnapshotTests.swift
//  SparkTextEditorTests
//
//  Created by robin.lemaire on 19/07/2024.
//  Copyright © 2024 Adevinta. All rights reserved.
//

import UIKit
@testable import SparkTextEditor
@_spi(SI_SPI) @testable import SparkCommon
@_spi(SI_SPI) @testable import SparkCommonSnapshotTesting

struct TextEditorConfigurationSnapshotTests {

    // MARK: - Properties

    let scenario: TextEditorScenarioSnapshotTests

    let intent: TextEditorIntent
    let modes: [ComponentSnapshotTestMode]
    let sizes: [UIContentSizeCategory]

    // MARK: - Getter

    func testName() -> String {
        return [
            "\(self.scenario.rawValue)",
            "\(self.intent)"
        ].joined(separator: "-")
    }
}
