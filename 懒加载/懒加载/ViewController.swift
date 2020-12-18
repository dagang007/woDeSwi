/*
 https://blog.csdn.net/u011146511/article/details/79245676
 swift 之懒加载
 */

import UIKit

class ViewController: UIViewController {
    
    lazy var person : Human = {
        print("懒加载的定义")
        return Human()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        test1()
    }
    //测试结果：
    // 1.在真正使用之前，并不初始化lazy成员
    // 2.只在第一次执行闭包，以后直接返回return的值
    // 证明内部有变量存储了return的值
    func test1(){
        print("---------into [test1]")
        print("\(person)")
        print("---------after person")
        print("\(person)")
    }
    
    //计算属性：每次访问都会执行，语法规定懒加载不能修饰计算属性
    func test2(){
        let red = UIView(frame: CGRect(x: 100, y: 50, width: 100, height: 100))
        red.backgroundColor = UIColor.red
        self.view.addSubview(red)
        print("\(red.x)")
        print("\(red.x)")
    }
}

