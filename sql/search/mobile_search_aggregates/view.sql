CREATE OR REPLACE VIEW
  `moz-fx-data-shared-prod.search.mobile_search_aggregates`
AS
SELECT
  * EXCEPT (normalized_engine),
  `moz-fx-data-shared-prod`.udf.normalize_search_engine(engine) AS normalized_engine,
FROM
  `moz-fx-data-shared-prod.search_derived.mobile_search_aggregates_v1`
