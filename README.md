# System-Apps
Present Module Magisk/KSU for Uninstall/Install system applications via WebRoot.

![photo_2025-08-29_00-21-55](https://github.com/user-attachments/assets/237aec34-415c-41c9-9d3a-33fa624ea8ad)

The module has a WebUI interface and a script (Action) of actions.

Let's consider each of them...

A small digression: During the installation of the module, a folder is created in the root of the device memory, and an empty text file in it. This is necessary so that you can import the necessary application packages through this txt file into the text file, which is located in the module folder.

Action, when launched, begins the process of exporting the contents of a txt file from a folder in the smartphone's memory to a txt file in the module folder. It issues a request, with a choice via the device's volume buttons, of how exactly to transfer the contents of the first txt file: transfer with a complete replacement of the existing data of the second txt file or simply add the contents to the existing data of the second txt file.

WebUI: If you use root in the form of KSU, then the Web interface is already there.
If you use Magisk, then you will need to install an additional application to access the Web interface KSU WebUI.apk.
After installing this application, you will be taken to the page of installed modules, which contain WebUI.
Click on the Remove System Apps module, and the UI interface will open for you

![photo_2025-08-29_00-18-57](https://github.com/user-attachments/assets/a2d2f9a1-db7b-44e7-9fcc-fcff7fe0b989)

If you have already added your list of application packages via importing a text file, in the application list entry window. You can either delete them or save them.
By clicking "Clear Packages List", you can clear the application list field and enter application packages manually. You can click "Update Info" to verify the application package list (number of applications, weight of the application list, and verification of the correct list)
