import Foundation
import UIKit

class UnderlineElementAttributesConverter: ElementAttributeConverter {

    let cssAttributeMatcher = UnderlineCSSAttributeMatcher()
    
    func convert(
        _ attribute: Attribute,
        inheriting attributes: [NSAttributedStringKey: Any]) -> [NSAttributedStringKey: Any] {
        
        guard attribute.containsCSSAttribute(matching: cssAttributeMatcher) else {
            return attributes
        }
        
        var attributes = attributes
        
        attributes[.underlineStyle] = 1
        
        return attributes
    }
}
