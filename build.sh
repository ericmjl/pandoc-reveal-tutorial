# Make HTML notes version of slides
pandoc slides.md \
    -o index.html \
    --template=template.html \
    -c css/notes.css \
    -H header.html

# Make revealjs version of slides
pandoc slides.md -o slides.html \
    --section-divs \
    -t revealjs \
    -s \
    --template template.revealjs \
    -H header.html

# Automatically add and commit
git add .
git commit
git push
