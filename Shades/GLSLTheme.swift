//
//  GLSLTheme.swift
//  Shades
//
//  Created by Chris Zelazo on 2/19/19.
//  Copyright © 2019 Chris Zelazo. All rights reserved.
//

import Foundation
import SavannaKit
import SourceEditor

public struct DefaultSourceCodeTheme: SourceCodeTheme {
    
    public init() {
        
    }
    
    public static var lineNumbersColor: Color {
        return Color(red: 100/255, green: 100/255, blue: 100/255, alpha: 1.0)
    }
    
    public let lineNumbersStyle: LineNumbersStyle? = LineNumbersStyle(font: Font(name: "Menlo", size: 16)!, textColor: lineNumbersColor)
    
    public let gutterStyle: GutterStyle = GutterStyle(backgroundColor: Color(red: 21/255.0, green: 22/255, blue: 31/255, alpha: 1.0), minimumWidth: 32)
    
    public let font = Font(name: "Menlo", size: 15)!
    public let fontBold = Font(name: "Menlo-Bold", size: 15)!
    
    public let caretColor: Color = Color(red:0.98, green:0.71, blue:0.07, alpha:1.00)
    
    public let backgroundColor = Color(red: 0/255.0, green: 0/255, blue: 0/255, alpha: 0.75)
    
    public func color(for syntaxColorType: SourceCodeTokenType) -> Color {
        
        switch syntaxColorType {
        case .plain:
            return .white
            
        case .number:
            return Color(red: 65/255, green: 105/255, blue: 225/255, alpha: 1.0)
            
        case .string:
            return Color(red: 211/255, green: 35/255, blue: 46/255, alpha: 1.0)
            
        case .identifier:
            return Color(red: 20/255, green: 156/255, blue: 146/255, alpha: 1.0)
            
        case .keyword:
            return Color(red: 215/255, green: 0, blue: 143/255, alpha: 1.0)
            
        case .comment:
            return Color(red: 69.0/255.0, green: 187.0/255.0, blue: 62.0/255.0, alpha: 1.0)
            
        case .editorPlaceholder:
            return backgroundColor
        }
        
    }
    
}
