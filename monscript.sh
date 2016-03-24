
cp -R output $HOME/output

#configuration
cd $HOME

git config --global user.email "med.amine.sabri@gmail.com"
git config --global user.name "aminesabri"


git clone --quiet --branch=gh-pages https://${GH_TOKEN}@github.com/${GH_REF}  gh-pages > /dev/null


cd gh-pages
ls

cp $HOME/output/faq.html ./index.html



 #add, commit and push files
 git add -f .
 git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to gh-pages "

 git push -fq origin gh-pages > /dev/null



 echo -e "Deploy completed\n"

