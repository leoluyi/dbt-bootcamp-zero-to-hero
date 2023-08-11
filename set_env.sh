export $(grep -v '^#' .env | xargs) && echo "(exported env)"
