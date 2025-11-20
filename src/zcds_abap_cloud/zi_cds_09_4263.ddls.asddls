@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Quantity Conversion'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_cds_09_4263
  with parameters
    pFromUnit : abap.unit(3),
    pToUnit   : abap.unit(3)

  as select from zqty_lgl_4263
{
  key product             as ProductId,

      @Semantics.quantity.unitOfMeasure: 'OriginalUnit'
      quantity            as OriginalQty,

      unit                as OriginalUnit,

 @Semantics.quantity.unitOfMeasure: 'ConvertedUnit'
      unit_conversion(
            quantity        => quantity,
            source_unit     => $parameters.pFromUnit,
            target_unit     => $parameters.pToUnit,
            error_handling  => 'SET_TO_NULL',
            client          => $session.client
      )                   as ConvertedQty,

      $parameters.pToUnit as ConvertedUnit
} where unit = $parameters.pFromUnit;
