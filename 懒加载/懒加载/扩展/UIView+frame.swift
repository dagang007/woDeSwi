/**
 https://www.jianshu.com/p/3edbc811f899
 如何在swift中实现oc分类
 */

import UIKit
extension UIView{
      var x:CGFloat{
        get{
            print("[UIView]------------computed property")
            return self.frame.origin.x
        }
    }
}
