export $(grep -v '^#' .env | xargs)
export DATE=$(date +'%Y-%m-%d')

mongoexport --uri $URI/generaldb --collection clientes --type csv --out ./clientes/clientes_$DATE.csv --fields clienteMin,clienteString,notas
mongoexport --uri $URI/generaldb --collection obras --type csv --out ./obras/obras_$DATE.csv --fields clienteMin,obraMin,obraString,iva,retIsr,retIva,notas