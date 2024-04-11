Steps to Take Before Running Makefile:
	* Download newest version of Xcode on macBook
	* Open Xcode project (project label .xcodeproj) in Xcode application
	* In the bar at the top of the screen, make sure to select an IPhone simulator. For this run, please select the IPhone 14 simulation.
		In the case that a simulator is not currently selected. Elect to add a new simulator. Add the IPhone14 simulator.
	* In the top right corner of your screen select the name of the project near the Application icon (this will bring you to a setting page
	  for the project)
	* On the left hand toolbar select the project name under “PROJECTS” and ensure that the IOS Deployment Target is 16.2 or higher
	* Now select the project name under “TARGETS” and proceed with steps below
	* Under this tab you will see a menu bar with multiple options. Find the “Signing & Capabilities” tab and select it
	* Under this tab you will see an option called “Team”. It will currently say “None” next to it. Select the dropdown bar and press add an
	  account. You must sign into with your Apple ID to run the program via makefile.
	* Once you are signed into your account, select your name for the “Team” option (when running with a makefile Xcode requires there
	  is a team developer on the project)
	* If the Bundle Identifier is showing up red, please change this name to something unique


Steps To Take In Your Terminal Running The Makefile:
	* Once you are inside your terminal, make sure you are in the directory where the project is located (make sure you are not inside the
	  assets folder)
	* Now run this line inside your terminal to ensure you are inside the xcode application
        	sudo xcode-select --switch /Applications/Xcode.app
		Where ‘/Applications/Xcode.app’ is your directory path to the Xcode application. However for mac users this directory line should
	 	work appropriately.
	* Now that you have completed the previous steps, you may call make build in your terminal.  This action will likely cause your 
	  operating system to request you for your password, which is required for the process to run correctly. 
	* Once the build is completed, you may call make run. This will open the xcode simulator and run the application and an IPhone
	  for you to evaluate. 


SIDE NOTE - we realize these are a lot of steps that must be taken beforehand and during to run our makefile so in the case you need to 
quickly open our application you are welcome to use the build simulator inside of the Xcode application. Below are instructions to do so.


How To Run in XCode Application
	* Open Xcode on a MacOS device
	* Open our project in the Xcode application and wait for the project to fully load
	* Press the Play button and the simulation will appear. From here you can interact with our application
		If this is your first time running Xcode on your device you may need to open and close the simulation because it may stall.
		The simulation may bring you to the home screen of an IPhone and not directly to our application, in this case scroll over to
		the next page and you will see the icon with our application name. Press the application icon and you will be brought to our application.




More Information On the Makefile:
	In running that makefile, xcode has various trails that can lead to possible compilation mishaps. In this paragraph I will explain those
	situational instances if they may arise. In the case the build command presents an “Error 65” it most likely means that the team developer
	step explained above was not correctly taken. Please review this section and try to build and run again.