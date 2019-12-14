# manim-repl [![Run on Repl.it](https://repl.it/badge/github/lunaroyster/manim-repl)](https://repl.it/github/lunaroyster/manim-repl)

## Instructions to run on Repl.it

1. If you haven't already, click the 'Run on Repl' button above to launch the project on repl.it

2. Use `Ctrl + Shift + S` to open the shell, and type `bash install.sh`

3. Once that completes, you can begin using manim. Here's an example command: `python ./manim/manim.py -l ./manim/example_scenes.py SquareToCircle`. That renders a video, which you can find at media/videos/example_scenes/480p15/SquareToCircle.mp4

![The Rendered Video](https://i.imgur.com/MWBshCh.gif)

Note: The manim command in step 3 may seem to end in an error: `No such file or directory: 'xdg-open': 'xdg-open'`. That's okay, the render should still have worked. The file explorer might take a bit to update with the new directory structure.


## Next steps:

* Build a tiny webserver to browse and display math animations at the repl.run url
* I think the installation step above can be removed. It's not quite the same as the 'run' command (which we could add to the .replit file), which should run our webserver.
* Consider if there's a way to save and stream animations that doesn't require rendering to a video file
