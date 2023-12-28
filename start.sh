
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/RB-Bots/RB_FILTER_BOT.git /RB_FILTER_BOT 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RB_FILTER_BOT 
fi
cd /RB_FILTER_BOT 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
