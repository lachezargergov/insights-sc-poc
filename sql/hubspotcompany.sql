CREATE OR REPLACE VIEW "hubspotcompany" AS 
SELECT
  "company"."property_client_type" "clienttier"
, "company"."property_team_owner" "teamowner"
, CONCAT("hso"."first_name", ' ', "hso"."last_name") "companyowner"
, "company"."property_service_level" "servicelevel"
, DATE("company"."property_start_date") "contractstartdate"
, DATE("company"."property_last_renewal_date") "lastrenewaldate"
, DATE("company"."property_term_end") "termend"
, "company"."property_initial_deal_term" "dealterm"
, "company"."property_terminated" "terminated"
FROM
  (("hubspot"."company"
LEFT JOIN "hubspot"."owner" "hso" ON ("company"."property_hubspot_owner_id" = "hso"."owner_id"))
LEFT JOIN "hubspot"."company" "hspc" ON (("company"."property_hs_parent_company_id" = "hspc"."id") AND ("hspc"."Is_Deleted" = false)))
WHERE ("hubspot"."company"."is_deleted" = false)