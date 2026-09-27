import AppKit
import XCTest
import SinterPixels

final class SinterPixelsIntegrationTests: XCTestCase {
    func testSinterPixelsAppIsAvailable() throws {
        let runningApp = NSRunningApplication.runningApplications(
            withBundleIdentifier: "com.tomographic.sinterpixels"
        ).first
        guard runningApp != nil else {
            throw XCTSkip("SinterPixels is not running")
        }

        XCTAssertNotNil(SPApp())
    }
}