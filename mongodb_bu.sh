export $(grep -v '^#' .env | xargs)
export DATE=$(date +'%Y-%m-%d')
