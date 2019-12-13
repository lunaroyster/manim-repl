cd /home/runner/manim-repl/
git clone https://github.com/3b1b/manim
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz -O sneakyffmpeg.tar.xz
mkdir sneakyffmpeg
tar xf sneakyffmpeg.tar.xz -C sneakyffmpeg --strip-components=1
chmod 777 ./sneakyffmpeg/ffmpeg
cd /home/runner/manim-repl/manim
sed -i 's/^FFMPEG_BIN = "ffmpeg"$/# FFMPEG_BIN = "ffmpeg"\nFFMPEG_BIN = "\/home\/runner\/manim-repl\sneakyffmpeg\/ffmpeg"/g' ./manimlib/constants.py
python -m pip install -r requirements.txt