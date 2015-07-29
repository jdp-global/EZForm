class EZFormRadioChoiceViewController {func viewDidLoad(){super.viewDidLoad()    self.tableView.allowsMultipleSelection = self.allowsMultipleSelection
}
func shouldAutorotate() -> Bool{    return true;
}
func supportedInterfaceOrientations() -> UInt{	NSUInteger thisIndex  = self.navigationController.viewControllers.indexOfObject(self)	if (thisIndex != NSNotFound && thisIndex > 0) {
let previousViewController :	    UIViewController  =previousViewController.supportedInterfaceOrientations()	}
    }
    if ([[UIDevice currentDevice] userInterfaceIdiom]  = 	return UIInterfaceOrientationMaskAll
    }
    else {
	return UIInterfaceOrientationMaskPortrait
    }
}
//MARK  - Table view data source
func numberOfSectionsInTableView(tableView:UITableView) -> Int{    #pragma unused(tableView)
    return 1
}
func tableView(tableView:UITableView,section:Int) -> Int{    #pragma unused(tableView, section)
field.choices.count()}
func tableView(tableView:UITableView,indexPath:NSIndexPath) -> UITableViewCell {let cell :    UITableViewCell  =tableView.dequeueReusableCellWithIdentifier(CellIdentifier)    if (nil == cell) {
	cell  = UITableViewCellUITableViewCell    }
    cell.textLabel.text  = field.choices.valueForKey(choiceKey)    if (modelValueArray ! = NSArray.class()modelValueArray.isKindOfClass()NSArray.class()modelValueArray.isKindOfClass()        modelValueArray  =     }
(NSArray.*)modelValueArray(choiceKey)        cell.accessoryType = UITableViewCellAccessoryCheckmark
    }
    else {
        cell.accessoryType = UITableViewCellAccessoryNone
    }
    return cell
}
//MARK  - Table view delegate
func tableView(tableView:UITableView,indexPath:NSIndexPath){    if (modelValueArray ! = NSArray.class()modelValueArray.isKindOfClass()NSArray.class()modelValueArray.isKindOfClass()        modelValueArray  =     }
(EZFormMultiRadioFormField.*)field(choiceKey)    }
    else {
    }
self.updateCellCheckmarks()}
//MARK  - Update cell checkmarks
func updateCellCheckmarks(){    if (modelValueArray ! = NSArray.class()modelValueArray.isKindOfClass()NSArray.class()modelValueArray.isKindOfClass()        modelValueArray  =     }
self.tableView.visibleCells()let indexPath :        NSIndexPath  =self.tableView.indexPathForCell(cell)let choiceKey :        NSString  =        __block BOOL selected = false;
        [(NSArray *)modelValueArray enumerateObjectsUsingBlock:^(id selection, __unused NSUInteger idx, BOOL *stop) {
selection.isEqualToString(choiceKey)                selected = true;
                *stop = true;
            }
        }]
        if (selected) {
	    cell.accessoryType = UITableViewCellAccessoryCheckmark
        }
        else {
	    cell.accessoryType = UITableViewCellAccessoryNone
        }
    }
}
}