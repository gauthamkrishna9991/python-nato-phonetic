if hash virtualenv 2> /dev/null; then
    echo 'Creating virtual environment'
    virtualenv -p python3 .
else
    echo `virtualenv tool does not exist. Installing as ${USER}`
    pip install -v virtualenv
    virtualenv -p python3 .
fi
source ./bin/activate
echo "Project install completed. To run program, execute python src/main.py"
pip install -r requirements.txt
