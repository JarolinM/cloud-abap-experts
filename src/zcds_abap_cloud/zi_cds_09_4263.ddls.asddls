@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Quantity Conversion'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_cds_09_4263
  as select from zqty_lgl_4263
{
  key product                                       as ProductId,
      @Semantics.quantity.unitOfMeasure: 'OriginalUnit'
      quantity                                      as OriginalQty,
      unit                                          as OriginalUnit

//      unit_conversion( quantity        => quantity,
//                       source_unit     => unit,
//                       target_unit    => abap.unit'MI',
//                       error_handling => 'SET_TO_NULL',
//                       client => $session.client ) as ConvertedQty,
//      abap.unit'MI'                                 as ConvertedUnit
}
