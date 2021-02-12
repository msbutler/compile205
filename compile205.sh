for d in */ ; do
    cd "$d"
    for file in *.ipynb; do
        echo "$file"
        jupyter-nbconvert --to PDFviaHTML "$file"
    done
    echo "$d"
    cd ..
done