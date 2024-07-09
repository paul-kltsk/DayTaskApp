//
//  UIFont+Extension.swift
//  DayTaskApp
//
//  Created by Pavel Kylitsky on 09/07/2024.
//

import UIKit

extension UIFont {
    enum Inter {
        
        enum black {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Inter.black, size: size)!
            }
        }
        
        enum bold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Inter.bold, size: size)!
            }
        }
        
        enum extraBold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Inter.extraBold, size: size)!
            }
        }
        
        enum extraLight {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Inter.extraLight, size: size)!
            }
        }
        
        enum light {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Inter.light, size: size)!
            }
        }

        
        enum medium {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Inter.medium, size: size)!
            }
        }
        
        
        enum regular {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Inter.regular, size: size)!
            }
        }
        
        enum thin {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Inter.thin, size: size)!
            }
        }
        
        enum semibold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Inter.semibold, size: size)!
            }
        }
    }
}

private extension UIFont {
    enum Constants {
        enum Inter {
            static let black = "Inter-Black"
            static let bold = "Inter-Bold"
            static let extraBold = "Inter-ExtraBold"
            static let extraLight = "Inter-ExtraLight"
            static let light = "Inter-Light"
            static let medium = "Inter-Medium"
            static let regular = "Inter-Regular"
            static let semibold = "Inter-Semibold"
            static let thin = "Inter-Thin"
        }
    }
}
