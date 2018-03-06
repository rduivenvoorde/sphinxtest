��    +      t              �      �  7   �     &  �   2  A   1     s     �     �  �   �  !   8     Z  .   z  D  �     �  v     �   z  m     5   z  j   �  !   	  !   =	  v   _	     �	  �   �	     �
    �
     �     �  ;   �  !   8     Z     r  �   �  f   �  M   �     ;  P   N  i   �  '  	     1  <   J  -  �  y  �      /  7   P     �  �   �  A   �     �     �     �  �     !   �     �  .   �  D       P  v   e  �   �  m   n  5   �  j     !   }  !   �  v   �     8  �   S              2     H  ;   ^  !   �     �     �  �   �  f   �  M   O     �  P   �  i     '  k     �   <   �   -  �    *File* -> *Open File or Project* After installing you should find it in your gnome menu. Arguments : As mentioned above, we cannot run QGIS from directly in the build directly, so we need to create a custom run target to tell QtCreator to run QGIS from the install dir (in my case ``/usr/local/``). To do that, return to the projects configuration screen. Click on the 'Projects' icon on the left of the QtCreator window. Command arguments: install Command: make Debugger: C++ [yes] Do do that, click the 'Add v' combo button next to the Run configuration combo and choose 'Custom Executable' from the top of the list. Enable custom process step: [yes] Executable: /usr/local/bin/qgis Getting up and running with QtCreator and QGIS I'm assuming you have already got a local QGIS clone containing the source code, and have installed all needed build dependencies etc. There are detailed instructions for :ref:`git access <git_access>` and `dependency installation <https://htmlpreview.github.io/?https://github.com/qgis/QGIS/blob/master/doc/INSTALL.html>`_. Installing QtCreator Its probably a good idea to create separate build directories for different branches if you can afford the disk space. Next you will be asked if you have any CMake build options to pass to CMake. We will tell CMake that we want a debug build by adding this option: Next you will be prompted for a build location. I create a specific build dir for QtCreator to work in under: Now in the properties area set the following details: Now launch QGIS under the debugger by clicking the icon with a bug on it in the bottom left of the window. Now select the 'Run Settings' tab Now we set the following details: Now you are ready to run and debug QGIS. To set a break point, simply open a source file and click in the left column. On launching QtCreator do: On my system I have checked out the code into ``$HOME/dev/cpp/QGIS`` and the rest of the article is written assuming that, you should update these paths as appropriate for your local system. Qml [no] QtCreator is a newish IDE from the makers of the Qt library. With QtCreator you can build any C++ project, but it's really optimised for people working on Qt(4) based applications (including mobile apps). Everything I describe below assumes you are running Ubuntu 11.04 'Natty'. Run in terminal: [no] Running and debugging Select the build settings tab (normally active by default). Setting up your build environment Setting up your project Setting your run environment That's the basics of it. When you complete the Wizard, QtCreator will start scanning the source tree for autocompletion support and do some other housekeeping stuff in the background. We want to tweak a few things before we start to build though. Then click the 'Rename' button and give your custom executable a meaningful name e.g. 'Installed QGIS' Then use the resulting file selection dialog to browse to and open this file: This part is easy: To start the build, click that big hammer icon on the bottom left of the window. We need to update the default run settings from using the 'qgis' run configuration to using a custom one. We now want to add a custom process step. Why? Because QGIS can currently only run from an install directory, not its build directory, so we need to ensure that it is installed whenever we build it. Under 'Build Steps', click on the 'Add BuildStep' combo button and choose 'Custom Process Step'. Working directory: $HOME Working directory: $HOME/dev/cpp/QGIS/build-master-qtcreator You are almost ready to build. Just one note: QtCreator will need write permissions on the install prefix. By default (which I am using here) QGIS is going to get installed to ``/usr/local/``. For my purposes on my development machine, I just gave myself write permissions to the /usr/local directory. Project-Id-Version: DocTest 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-03-06 22:11+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: nl
Language-Team: nl <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 *File* -> *Open File or Project* After installing you should find it in your gnome menu. Arguments : As mentioned above, we cannot run QGIS from directly in the build directly, so we need to create a custom run target to tell QtCreator to run QGIS from the install dir (in my case ``/usr/local/``). To do that, return to the projects configuration screen. Click on the 'Projects' icon on the left of the QtCreator window. Command arguments: install Command: make Debugger: C++ [yes] Do do that, click the 'Add v' combo button next to the Run configuration combo and choose 'Custom Executable' from the top of the list. Enable custom process step: [yes] Executable: /usr/local/bin/qgis Getting up and running with QtCreator and QGIS I'm assuming you have already got a local QGIS clone containing the source code, and have installed all needed build dependencies etc. There are detailed instructions for :ref:`git access <git_access>` and `dependency installation <https://htmlpreview.github.io/?https://github.com/qgis/QGIS/blob/master/doc/INSTALL.html>`_. Installing QtCreator Its probably a good idea to create separate build directories for different branches if you can afford the disk space. Next you will be asked if you have any CMake build options to pass to CMake. We will tell CMake that we want a debug build by adding this option: Next you will be prompted for a build location. I create a specific build dir for QtCreator to work in under: Now in the properties area set the following details: Now launch QGIS under the debugger by clicking the icon with a bug on it in the bottom left of the window. Now select the 'Run Settings' tab Now we set the following details: Now you are ready to run and debug QGIS. To set a break point, simply open a source file and click in the left column. On launching QtCreator do: On my system I have checked out the code into ``$HOME/dev/cpp/QGIS`` and the rest of the article is written assuming that, you should update these paths as appropriate for your local system. Qml [no] QtCreator is a newish IDE from the makers of the Qt library. With QtCreator you can build any C++ project, but it's really optimised for people working on Qt(4) based applications (including mobile apps). Everything I describe below assumes you are running Ubuntu 11.04 'Natty'. Run in terminal: [no] Running and debugging Select the build settings tab (normally active by default). Setting up your build environment Setting up your project Setting your run environment That's the basics of it. When you complete the Wizard, QtCreator will start scanning the source tree for autocompletion support and do some other housekeeping stuff in the background. We want to tweak a few things before we start to build though. Then click the 'Rename' button and give your custom executable a meaningful name e.g. 'Installed QGIS' Then use the resulting file selection dialog to browse to and open this file: This part is easy: To start the build, click that big hammer icon on the bottom left of the window. We need to update the default run settings from using the 'qgis' run configuration to using a custom one. We now want to add a custom process step. Why? Because QGIS can currently only run from an install directory, not its build directory, so we need to ensure that it is installed whenever we build it. Under 'Build Steps', click on the 'Add BuildStep' combo button and choose 'Custom Process Step'. Working directory: $HOME Working directory: $HOME/dev/cpp/QGIS/build-master-qtcreator You are almost ready to build. Just one note: QtCreator will need write permissions on the install prefix. By default (which I am using here) QGIS is going to get installed to ``/usr/local/``. For my purposes on my development machine, I just gave myself write permissions to the /usr/local directory. 