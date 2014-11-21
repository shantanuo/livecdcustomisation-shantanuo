var err = initInstall("Marathi (India) Dictionary", "mr-IN@dictionaries.addons.mozilla.org", "9.3");
if (err != SUCCESS)
    cancelInstall();

var fProgram = getFolder("Program");
err = addDirectory("", "mr-IN@dictionaries.addons.mozilla.org",
		   "dictionaries", fProgram, "dictionaries", true);
if (err != SUCCESS)
    cancelInstall();

performInstall();
