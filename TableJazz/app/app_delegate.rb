class AppDelegate

  attr_reader :data

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = AlphabetController.alloc.initWithNibName(nil, bundle:nil)
    rootViewController.title = 'TableJazz'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
