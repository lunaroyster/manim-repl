echo "Installing in $PWD"
git clone https://github.com/3b1b/manim
wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz -O $PWD/ffmpeg.tar.xz
mkdir $PWD/ffmpeg
tar xf ffmpeg.tar.xz -C $PWD/ffmpeg --strip-components=1
chmod 777 $PWD/ffmpeg/ffmpeg
sed -i "s/^FFMPEG_BIN = \"ffmpeg\"$/# FFMPEG_BIN = \"ffmpeg\"\nFFMPEG_BIN = \"$PWD\/ffmpeg\/ffmpeg\"/g" $PWD/manim/manimlib/constants.py
python -m pip install -r $PWD/manim/requirements.txt
