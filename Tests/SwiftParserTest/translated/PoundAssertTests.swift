//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2022 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

// This test file has been translated from swift/test/Parse/pound_assert.swift

import XCTest

final class PoundAssertTests: XCTestCase {
  func testPoundAssert1() {
    AssertParse(
      """
      #assert(true, 1️⃣123)
      """
    )
  }

  func testPoundAssert2() {
    AssertParse(
      #"""
      #assert(true, "error \(1) message")
      """#
    )
  }

  func testPoundAssert3() {
    AssertParse(
      #"""
      #assert1️⃣ true2️⃣, "error message")
      """#,
      diagnostics: [
        DiagnosticSpec(message: "consecutive statements on a line must be separated by ';'"),
        DiagnosticSpec(locationMarker: "2️⃣", message: #"extraneous code ', "error message")' at top level"#),
      ]
    )
  }

  func testPoundAssert4() {
    AssertParse(
      #"""
      #assert(1️⃣, "error message")
      """#,
      diagnostics: [
        DiagnosticSpec(message: "expected value in macro expansion expression")
      ]
    )
  }

  func testPoundAssert5() {
    AssertParse(
      """
      func unbalanced1() {
        #assertℹ️(true 1️⃣
      }
      """,
      diagnostics: [
        DiagnosticSpec(
          message: "expected ')' to end macro expansion expression",
          notes: [
            NoteSpec(message: "to match this opening '('")
          ]
        )
      ]
    )
  }

  func testPoundAssert6() {
    AssertParse(
      #"""
      func unbalanced2() {
        #assertℹ️(true, "hello world" 1️⃣
      }
      """#,
      diagnostics: [
        DiagnosticSpec(
          message: "expected ')' to end macro expansion expression",
          notes: [
            NoteSpec(message: "to match this opening '('")
          ]
        )
      ]
    )
  }

}
