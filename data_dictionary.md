# 📚 Project Data Dictionary & Architecture Framework

## Database Engine Setup
* Target Engine File Architecture: SQLite3 Core RDBMS Platform File System
* Master Operational Storage Target Instance Name: `bluestock_mf.db`

## Relational Entity Schema Blueprints

### 1. `dim_fund` (Dimension Table)
Contains master descriptors mapping out individual mutual fund asset listings.
* `amfi_code` (INTEGER, Primary Key): Unique alphanumeric identifier code assigned per fund unit.
* `fund_name` (TEXT): The full corporate designation title of the fund.
* `category` (TEXT): Core market sector strategy allocation classification class.

### 2. `dim_date` (Dimension Table)
Time intelligence table handling date indexing dimensions.
* `date_id` (TEXT, Primary Key): Calendar mapping timestamp baseline.
* `day` / `month` / `year` / `quarter` (INTEGER): Calendrical parsing variables.

### 3. `fact_nav` (Fact Table)
Tracks the continuous timeline history logs of closing price assets.
* `amfi_code` (INTEGER, Composite Foreign Key): Reference key linking to `dim_fund`.
* `date` (TEXT, Composite Foreign Key): Index key link matching target row coordinates in `dim_date`.
* `nav` (REAL): Net Asset Value price.

### 4. `fact_transactions` (Fact Table)
Stores all transactional actions completed across client trading accounts.
* `transaction_id` (INTEGER, Primary Key): Auto-incrementing absolute operational key string sequence.
* `amount` (REAL): Net capital value scale magnitude allocated during runtime session interaction.
* `transaction_type` (TEXT): Standardized processing type identifier value.