@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Cds for Hierarchy'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_cds_22
  as select from zemployee_4263
  association[0..1] to  zi_cds_22 as _Manager on _Manager.Employee = $projection.Manager
{
  key employee as Employee,
  key manager  as Manager,
      name     as Name,
      _Manager
}
