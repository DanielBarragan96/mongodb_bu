export $(grep -v '^#' .env | xargs)
export DATE=$(date +'%Y-%m-%d')

mongoexport --uri $URI/generaldb --collection clientes --type csv --out ./clientes/clientes_$DATE.csv --fields clienteMin,clienteString,notas
mongoexport --uri $URI/generaldb --collection obras --type csv --out ./obras/obras_$DATE.csv --fields clienteMin,obraMin,obraString,iva,retIsr,retIva,notas
mongoexport --uri $URI/generaldb --collection equipos --type csv --out ./equipos/equipos_$DATE.csv --fields index,equipoMin,equipoString,precio,notas

mongoexport --uri $URI/fletesdb --collection fletes --type csv --out ./fletes/fletes_$DATE.csv --fields folio,fecha,clienteMin,obraMin,es,precio,maniobra,varios,desmoldante,cepillo,notas,equipo
