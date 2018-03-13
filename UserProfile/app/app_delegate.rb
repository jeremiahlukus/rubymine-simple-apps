class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @user = User.load
    @user ||= User.new (:id => "123", :name => "Jeremiah", :email => "jeremiah@gmail.com", :phone => "1221222")

    rootViewController = UserController.alloc.initWithUser(@user)
    rootViewController.title = 'UserProfile'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible
    true
  end

  def applicationDidEnterBackground(application)
    @user.save
  end

end
