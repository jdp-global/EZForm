class EZFormRadioChoiceViewController {
}

}

let previousViewController :	    UIViewController  =
    }
    if ([[UIDevice currentDevice] userInterfaceIdiom]  = 
    }
    else {
	return UIInterfaceOrientationMaskPortrait
    }
}
//MARK  - Table view data source

    return 1
}

field.choices.count()

	cell  = UITableViewCell
    cell.textLabel.text  = field.choices.valueForKey(choiceKey)
(NSArray.*)modelValueArray(choiceKey)
    }
    else {
        cell.accessoryType = UITableViewCellAccessoryNone
    }
    return cell
}
//MARK  - Table view delegate

(EZFormMultiRadioFormField.*)field(choiceKey)
    else {

self.updateCellCheckmarks()
//MARK  - Update cell checkmarks

self.tableView.visibleCells()
        [(NSArray *)modelValueArray enumerateObjectsUsingBlock:^(id selection, __unused NSUInteger idx, BOOL *stop) {
selection.isEqualToString(choiceKey)
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