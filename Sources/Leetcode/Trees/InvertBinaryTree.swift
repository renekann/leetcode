public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
    
    public func toString() -> String {
        if (left == nil && right == nil) { return "\(val)" }
        
        var result = "\(val)"
        
        if let left = left {
            result += left.toString()
        }
        
        if let right = right {
            result += right.toString()
        }
        
        return result
    }
}

extension Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        
        if (root.left == nil && root.right == nil) {
            return root
        }
        
        return TreeNode(root.val, invertTree(root.right), invertTree(root.left))
    }
}
