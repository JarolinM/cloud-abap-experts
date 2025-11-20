@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista C para producción por indicador'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_PROD_X_INDIC 
  as projection on ZI_PROD_X_INDIC
{
  key Idreg,
  key Fecha,
  key Indicador,
      Produccion,
      Cantidad,
      Usuarioext,
      Hora,
      Createdat,
      Createdby
}
