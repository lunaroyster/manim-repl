if grep -Fxq "installed=true" manim-repl.config
then
    echo "Installed"
else
    echo "Installing manim-repl"
    bash install.sh
fi
