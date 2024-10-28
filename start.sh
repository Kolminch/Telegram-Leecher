if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Kolminch/Telegram-Leecher /Leecher
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Leecher
fi
cd /Leecher
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
