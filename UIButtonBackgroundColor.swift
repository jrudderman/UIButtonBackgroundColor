import UIKit

extension UIButton {
    func setBackgroundColor(color: UIColor?, forState state: UIControlState) {
        if let color = color {
            setBackgroundImage(UIImage.imageColored(color), forState: state)
        }
    }
}

extension UIImage {
    class func imageColored(color: UIColor) -> UIImage! {
        let rect = CGRect(x: 0, y: 0, width: 0.5, height: 0.5)
        UIGraphicsBeginImageContextWithOptions(rect.size, CGColorGetAlpha(color.CGColor) == 1, 0)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
