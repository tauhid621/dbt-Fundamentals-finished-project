select *
from {{ ref('property_management', 'stg_properties') }}