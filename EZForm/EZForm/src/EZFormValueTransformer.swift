class EZFormValueTransformer {class func allowsReverseTransformation() -> Bool{    return false;
}
func transformedValue(value:[AnyObject]) -> [AnyObject]{}
//MARK  - Creating EZFormTransformers
func init(block:EZFormValueTransformationBlock)        _forwardBlock = block
    }
}
class func valueTransformerWithBlock(block:EZFormValueTransformationBlock) -> [AnyObject]{self.initWithBlock(block)self.initWithBlock(block)}
class func valueTransformerWithKeyPath(keyPath:String) -> [AnyObject]{        if (input == nil) {
            return nil
        }
NSString.class()input.isKindOfClass()NSString.class()input.isKindOfClass()            return input
        }
NSArray.class()input.isKindOfClass()NSArray.class()input.isKindOfClass()NSString.class()((NSArray.*)input).firstObject()NSString.class()((NSArray.*)input).firstObject()                return input
            }
let keys :            NSMutableArray  =NSMutableArray.array()            for (id i in (NSArray *)input) {
i.valueForKeyPath(keyPath)keys.addObject()i.valueForKeyPath(keyPath)keys.addObject()            }
keys.copy()        }
        return value
    }]
}
class func valueTransformerWithKeyPathForValue(keyPath:String,displayKeyPath:String) -> [AnyObject]{        if (input == nil)
            return nil
NSString.class()input.isKindOfClass()NSString.class()input.isKindOfClass()            return input
NSArray.class()input.isKindOfClass()NSArray.class()input.isKindOfClass()NSString.class()((NSArray.*)input).firstObject()NSString.class()((NSArray.*)input).firstObject()                return input
let choices :            NSMutableDictionary  =NSMutableDictionary.initWithCapacity(0)NSMutableDictionary.initWithCapacity(0)            for (id i in (NSArray *)input) {
                id<NSCopying> value  = i.valueForKeyPath(keyPath)                id displayValue  = i.valueForKeyPath(displayKeyPath)            }
choices.copy()        }
        return { value: (displayValue ?: value) };
    }]
}
}