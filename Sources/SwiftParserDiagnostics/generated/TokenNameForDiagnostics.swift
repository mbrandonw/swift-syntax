//// Automatically generated by generate-swiftsyntax
//// Do not edit directly!
//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2023 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

@_spi(RawSyntax) import SwiftSyntax

extension TokenKind {
  var nameForDiagnostics: String {
    switch self {
    case .arrow:
      return #"->"#
    case .atSign:
      return #"@"#
    case .backslash:
      return #"\"#
    case .backtick:
      return #"`"#
    case .binaryOperator:
      return #"binary operator"#
    case .colon:
      return #":"#
    case .comma:
      return #","#
    case .dollarIdentifier:
      return #"dollar identifier"#
    case .ellipsis:
      return #"..."#
    case .endOfFile:
      return #"end of file"#
    case .equal:
      return #"="#
    case .exclamationMark:
      return #"!"#
    case .extendedRegexDelimiter:
      return #"extended delimiter"#
    case .floatingLiteral:
      return #"floating literal"#
    case .identifier:
      return #"identifier"#
    case .infixQuestionMark:
      return #"?"#
    case .integerLiteral:
      return #"integer literal"#
    case .leftAngle:
      return #"<"#
    case .leftBrace:
      return #"{"#
    case .leftParen:
      return #"("#
    case .leftSquare:
      return #"["#
    case .multilineStringQuote:
      return #"""""#
    case .period:
      return #"."#
    case .postfixOperator:
      return #"postfix operator"#
    case .postfixQuestionMark:
      return #"?"#
    case .pound:
      return #"#"#
    case .poundAvailable:
      return #"#available"#
    case .poundElse:
      return #"#else"#
    case .poundElseif:
      return #"#elseif"#
    case .poundEndif:
      return #"#endif"#
    case .poundIf:
      return #"#if"#
    case .poundSourceLocation:
      return #"#sourceLocation"#
    case .poundUnavailable:
      return #"#unavailable"#
    case .prefixAmpersand:
      return #"&"#
    case .prefixOperator:
      return #"prefix operator"#
    case .rawStringDelimiter:
      return #"raw string delimiter"#
    case .regexLiteralPattern:
      return #"regex pattern"#
    case .regexSlash:
      return #"/"#
    case .rightAngle:
      return #">"#
    case .rightBrace:
      return #"}"#
    case .rightParen:
      return #")"#
    case .rightSquare:
      return #"]"#
    case .semicolon:
      return #";"#
    case .singleQuote:
      return #"'"#
    case .stringQuote:
      return #"""#
    case .stringSegment:
      return #"string segment"#
    case .unknown:
      return #"token"#
    case .wildcard:
      return #"wildcard"#
    case .keyword(let keyword):
      return String(syntaxText: keyword.defaultText)
    }
  }
}
