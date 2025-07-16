CREATE OR REPLACE VIEW "hubspotcompany" AS 
SELECT
<<<<<<< HEAD
  "company"."property_client_type" "clienttier"
, "company"."property_team_owner" "teamowner"
, CONCAT("hso"."first_name", ' ', "hso"."last_name") "companyowner"
, "company"."property_service_level" "servicelevel"
=======
  "company"."id" "companyid"
, "company"."property_name" "companyname"
, "company"."property_company_status" "companystatus"
, "company"."property_rights_represented" "rightsrepresented"
, "hspc"."property_name" "parentcompanyname"
, "company"."property_rightsapp_identifier" "rightsappidentifier"
, "company"."property_ra_client_type" "clienttype_publishing"
, "company"."property_nr_rightsapp_identifier" "rightsappidentifier_nr"
, "company"."property_nr_client_type" "clienttype_nr"
, "company"."property_client_type" "clienttier"
, "company"."property_team_owner" "teamowner"
, CONCAT("hso"."first_name", ' ', "hso"."last_name") "companyowner"
, "company"."property_service_level" "servicelevel"
, "company"."property_sales_lead" "saleslead"
, "company"."property_business_development_team" "businessdevelopmentteam"
, "company"."property_deal_territory" "dealterritory"
, "company"."property_country" "clientcountry_iso"
, "company"."property_client_region" "clientregion"
, "company"."property_clienttype" "clienttype"s
, "company"."property_target_tier_cloned_" "targettier"
, "company"."property_electronic_client_y_n_" "electronicclient"
, "company"."property_production_catalogue_" "productionmusiclient"
, "company"."property_genre" "genre"
>>>>>>> main
, DATE("company"."property_start_date") "contractstartdate"
, DATE("company"."property_last_renewal_date") "lastrenewaldate"
, DATE("company"."property_term_end") "termend"
, "company"."property_initial_deal_term" "dealterm"
, "company"."property_terminated" "terminated"
<<<<<<< HEAD
=======
, "company"."property_fraudulent_account" "fraudulent"
, "company"."property_suspicious_account" "suspicious"
, "company"."property_kyc_contact_approved_" "kyccontactapproved"
, "company"."property_distribution_schedule" "statementfrequency"
, "company"."property_statement_type" "statementtype"
, "company"."property_statement_branding" "statementbranding"
, "company"."property_creative_priority" "creativepriority"
>>>>>>> main
FROM
  (("hubspot"."company"
LEFT JOIN "hubspot"."owner" "hso" ON ("company"."property_hubspot_owner_id" = "hso"."owner_id"))
LEFT JOIN "hubspot"."company" "hspc" ON (("company"."property_hs_parent_company_id" = "hspc"."id") AND ("hspc"."Is_Deleted" = false)))
WHERE ("hubspot"."company"."is_deleted" = false)