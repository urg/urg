sed -i '' 's/baseURL/BaseURL/g' themes/hugo-refresh/layouts/partials/footer.html
npx hugo-extended@0.126.0  
git add *
git commit -m "Update site"
git push origin master
cd public
git add *
git commit -m "Update site"
git push origin master

