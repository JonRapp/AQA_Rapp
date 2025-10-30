# AQA_Rapp

Recreaion of a GUI visualizing a healing process for different types of patients.

## Executable
A zip file exe "exe_file.zip" is provided. After unpacking the zip archive, the file appAQA_Rapp_GUI.exe can be executed within the directory to run the application.

## Installation instructions
Requirements to build the application on Windows 10/11:
- Qt 6.8 or higher including Qt Components: Qt Quick Effect Maker, Qt 5 Compatibility module, 
- CMake 3.16+
- A C++ compiler (MSVC, MinGW,...)

The project is built via: 
cmake -DCMAKE_PREFIX_PATH="X:\path\to\cmake" -S <source-dir> -B <build-dir>
where <source-dir> is the project cloned from the repository.

## Improvements with more time
Within the time constraints I didn't manage to: 
- smooth animations with correct timings of the "Healing-Icon" during the healing process
- proper positioning of the healing icon in the lower left corner and the patient icon in the upper right corner
- get rid of "random numbers" in the code, especially window sizes
- finish the animation of the "Healing button"

## Feedback
- It's fun to have a little challenge and crafting a UI
- The task was clear and the online prototype was well understandable

- the time constraint was the hardest challenge
