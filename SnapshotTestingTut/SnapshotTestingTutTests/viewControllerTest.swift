//
//  viewControllerTest.swift
//  SnapshotTestingTutTests
//
//  Created by Bonginkosi Tshabalala on 2023/04/17.
//

import XCTest
import SnapshotTesting
@testable import SnapshotTestingTut

final class viewControllerTest: XCTestCase {
    var sut: ViewController!
    
    override func setUpWithError() throws {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    func testDefaultState() {
        assertSnapshot(matching: sut, as: .image)
    }
    func testDarkMode() {
        sut.isDarkMode = true
        assertSnapshot(matching: sut, as: .image)
    }

}
