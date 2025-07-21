CREATE OR REPLACE VIEW "hubspotcompany" AS 
SELECT
  "company"."id" "companyid"
, "company"."property_nr_client_type" "clienttype_nr"
<<<<<<< HEAD
, "company"."property_service_level" "servicelevel"
, "company"."property_genre" "genre"
=======
, "company"."property_client_type" "clienttier"
>>>>>>> test8
, DATE("company"."property_start_date") "contractstartdate"
, DATE("company"."property_last_renewal_date") "lastrenewaldate"
, "company"."property_terminated" "terminated"
FROM
  (("hubspot"."company"
LEFT JOIN "hubspot"."owner" "hso" ON ("company"."property_hubspot_owner_id" = "hso"."owner_id"))
LEFT JOIN "hubspot"."company" "hspc" ON (("company"."property_hs_parent_company_id" = "hspc"."id") AND ("hspc"."Is_Deleted" = false)))
WHERE ("hubspot"."company"."is_deleted" = false)