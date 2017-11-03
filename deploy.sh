# clean old static files 
echo "changing branches to master"
# CHANGE THIS TO MASTER
git checkout dev 
echo "building docs"
make docs
echo "moving docs to tmpdocs"
mv docs/build/html tmpdocs 
echo "changing branch to gh-pages"
git checkout gh-pages
echo -n "clean old static directorys? [n]: "
read x 
if [ "$x" == "y" ]; then
  rm -rf _*
fi
echo "Moving files..."
mv tmpdocs/* .
echo "Removing old html directory"
rm -rf tmpdocs
rm -rf docs

