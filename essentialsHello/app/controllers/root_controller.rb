class RootController < UIViewController

  def viewDidLoad
    alert = UIAlertView.alloc.initWithTitle("Some Title", message: "hey this is an alert", delegate: nil, cancelButtonTitle: "cancel", otherButtonTitles: "Yes", "No", nil)
    alert.show
  end

end