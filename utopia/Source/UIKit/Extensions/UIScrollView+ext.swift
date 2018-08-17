import UIKit.UIScrollView

extension UIScrollView {
  
  func scrollToBottom() {
    layoutIfNeeded()
    
    let minimumYOffset = -max(Display.navbarSize, contentInset.top)
    
    contentOffset = CGPoint(x: 0,
                            y: max(minimumYOffset, bounds.minY + contentSize.height + contentInset.top - bounds.height))
  }
  
}
