if [ "$#" -eq 1 ]
then
    git add .;
    git commit -am "$1";
    git push heroku master;
    heroku logs --tail;
else
    echo "Usage: heroku_push \"COMMIT MESSAGE\"";
fi