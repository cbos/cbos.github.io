
TODAY_TAG := `date +"%Y%m%d"`

create-post TITLE:
    CONVERTED_TITLE=$(echo "{{TITLE}}" | sed -r 's/[ ]+/-/g' | tr '[:upper:]' '[:lower:]') && hugo new content content/posts/{{TODAY_TAG}}-$CONVERTED_TITLE/index.md
