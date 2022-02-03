import XCTest
@testable import Trace

@available(macOS 12.0, *)
@available(iOS 15.0, *)
@available(watchOS 8.0, *)
@available(tvOS 15.0, *)
final class TraceTests: XCTestCase {
    func test() async throws {
        let ip = await Trace.ip
        let geocode = await Trace.geocode
        let callingCodes = await Trace.callingCodes
        let primaryCallingCode = await Trace.primaryCallingCode
        let time = await Trace.time
        XCTAssert(ip != nil)
        XCTAssert(geocode != nil)
        XCTAssert(!callingCodes.isEmpty)
        XCTAssert(primaryCallingCode != nil)
        XCTAssert(time != nil)
    }
}
