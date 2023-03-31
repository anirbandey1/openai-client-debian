# Build script

git clone https://github.com/awesomeDev12/openai-client.git src


sudo apt install python3-pip
pip install venvs


# Run this command if the above the command is not working
# Check version before installing (Its needed for debian systems)
sudo apt install python3.10-venv


#Install in virtualenv
python3 -m venv .venvs/openai-client-venv

if [ -f .venvs/openai-client-venv/bin/activate ]; then
    echo "Good to go"
else
    echo "Virtual environment not created properly"
    exit 1
fi

source .venvs/openai-client-venv/bin/activate
python3 -m pip install --upgrade pip
python3 -m pip install PySide6
python3 -m pip install openai
python3 -m pip install pyinstaller
which python

pyinstaller src/main.py

cp -r dist/main openai-client/opt/openai-client-bin/binaries

dpkg-deb --build openai-client

# deactivate virtualenv
# deactivate
