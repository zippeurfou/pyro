# clean old static files 
echo "clean old static directorys? [n]: "
read x 
if [ "$x" == "y" ]; then
  rm -rf _*
fi
# build docs
echo "building docs..."
make html
echo "Moving files..."
mv html/* .
echo "Removing old html directory"
rm -rf html
