@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vista para producción por indicador'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_PROD_X_INDIC
  as select from zprod_x_indic
{
key idreg as Idreg,
key fecha as Fecha,
key indicador as Indicador,
produccion as Produccion,
cantidad as Cantidad,
usuarioext as Usuarioext,
hora as Hora,
createdat as Createdat,
createdby as Createdby
}
