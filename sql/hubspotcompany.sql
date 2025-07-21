CREATE OR REPLACE VIEW "hubspotcompany" AS 
SELECT
  "company"."id" "companyid"
, "company"."property_nr_client_type" "clienttype_nr"
, "company"."property_client_type" "clienttier"
, DATE("company"."property_start_date") "contractstartdate"
, DATE("company"."property_last_renewal_date") "lastrenewaldate"
, "company"."property_terminated" "terminated"
, "company"."property_creative_priority" "creativepriority"
FROM
  (("hubspot"."company"
LEFT JOIN "hubspot"."owner" "hso" ON ("company"."property_hubspot_owner_id" = "hso"."owner_id"))
LEFT JOIN "hubspot"."company" "hspc" ON (("company"."property_hs_parent_company_id" = "hspc"."id") AND ("hspc"."Is_Deleted" = false)))
WHERE ("hubspot"."company"."is_deleted" = false)