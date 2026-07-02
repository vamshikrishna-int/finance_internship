-- 1. Top Funds by Total Assets Under Management (AUM)
SELECT f.fund_name, a.total_aum, a.state_hq
        FROM fact_aum a
        JOIN dim_fund f ON a.amfi_code = f.amfi_code
        ORDER BY a.total_aum DESC;

