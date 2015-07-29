class EZFormReversibleValueTransformer {class func allowsReverseTransformation() -> Bool{    return true;
}
func init(forwardBlock:EZFormValueTransformationBlock,reverseBlock:EZFormValueTransformationBlock){        _reverseBlock = reverseBlock
    }
}
class func reversibleValueTransformerWithForwardBlock(forwardBlock:EZFormValueTransformationBlock,reverseBlock:EZFormValueTransformationBlock) -> [AnyObject]{selfself}
func reverseTransformedValue(value:[AnyObject]) -> [AnyObject]{}
}