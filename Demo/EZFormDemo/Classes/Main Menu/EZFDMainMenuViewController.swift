class EZFDMainMenuViewController {func init(style:UITableViewStyle)    }
}
func viewDidLoad(){super.viewDidLoad()}
func viewDidUnload(){super.viewDidUnload()}
func shouldAutorotateToInterfaceOrientation(interfaceOrientation:UIInterfaceOrientation) -> Bool{    if ([[UIDevice currentDevice] userInterfaceIdiom]  = 	return true;
    }
    else {
	return (interfaceOrientation == UIInterfaceOrientationPortrait)
    }
}
}