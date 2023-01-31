export $(grep -v '^#' .env | xargs)

export URI=mongodb+srv://$MONGODB_USR:$MONGODB_PSW@$MONGODB_CLUSTER
export DATE=$(date +'%Y-%m-%d')

mongoexport --uri $URI/generaldb --collection clientes --type csv --out ./clientes/clientes_$DATE.csv --fields clienteMin,clienteString,notas
mongoexport --uri $URI/generaldb --collection obras --type csv --out ./obras/obras_$DATE.csv --fields clienteMin,obraMin,obraString,iva,retIsr,retIva,notas
mongoexport --uri $URI/generaldb --collection equipos --type csv --out ./equipos/equipos_$DATE.csv --fields index,equipoMin,equipoString,precio,notas

mongoexport --uri $URI/fletesdb --collection fletes --type csv --out ./fletes/fletes_$DATE.csv --fields folio,fecha,clienteMin,obraMin,es,precio,maniobra,varios,desmoldante,cepillo,notas,equipo

mongoexport --uri $URI/enobrasdb --collection en_obras --type csv --out ./enobras/enobras_$DATE.csv --fields fecha,clienteMin,obraMin,equipo