if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ashishkaushik34/Gracy-Auto-Filter-bot.git /Gracy-Auto-Filter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Gracy-Auto-Filter-bot
fi
cd /Gracy-Auto-Filter-bot
pip3 install -U -r requirements.txt
echo "Starting Gracy-Auto-Filter-bot...."
python3 bot.py
