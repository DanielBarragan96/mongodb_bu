export $(grep -v '^#' .env | xargs)
export DATE=$(date +'%Y-%m-%d')

mongoexport --uri $URI/generaldb --collection clientes --type csv --out ./clientes/clientes_$DATE.csv --fields clienteMin,clienteString,notas