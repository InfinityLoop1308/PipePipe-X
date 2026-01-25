cd client
git pull
git push git@codeberg.org:NullPointerException/PipePipe-X-Client.git
cd ../extractor
git pull
git push git@codeberg.org:NullPointerException/PipePipe-X-Extractor.git
cd ../shared
git pull
git push git@codeberg.org:NullPointerException/PipePipe-X-Shared.git
cd ..
if [ -n "$1" ]; then
    vim fastlane/metadata/android/en-US/changelogs/$1.txt
else
    echo "No version number provided. Skipping changelog edit."
fi
git add .
git commit -a
git push origin HEAD
git push git@codeberg.org:NullPointerException/PipePipe-X.git
