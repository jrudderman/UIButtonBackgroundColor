import UIKit

extension UIButton {
    func setBackgroundColor(color: UIColor?, forState state: UIControlState) {
        let image = color != nil ? UIImage.imageColored(color!) : nil
        setBackgroundImage(image, forState: state)
    }
}

extension UIImage {
    class func imageColored(color: UIColor) -> UIImage! {
        let onePixel = 1 / UIScreen.mainScreen().scale
        let rect = CGRect(x: 0, y: 0, width: onePixel, height: onePixel)
        UIGraphicsBeginImageContextWithOptions(rect.size, CGColorGetAlpha(color.CGColor) == 1, 0)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
