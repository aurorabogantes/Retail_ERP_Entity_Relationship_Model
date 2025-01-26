# Retail ERP Entity-Relationship Model

## Overview  
This project develops an entity-relationship (ER) model for a Retail ERP system, addressing the requirements of various business modules. The deliverables include a normalized ER model, SQL scripts for database validation, and comprehensive technical documentation.

## Features  
- **Normalized ER Model:** Designed to meet the specific requirements of retail businesses.  
- **SQL Scripts:**  
  - Creation of tables and sample data insertion.  
  - Query scripts for reporting and XML generation.  
- **Documentation:** Includes a data dictionary with entity descriptions, attributes, data types, and relationships.

## Modules and Requirements  

### 1. Customer Management  
Entities for capturing customer details and contact information.  
- **Entities:** `Cliente`, `Telefono`, `Correo`, `Direccion`.  

### 2. Product Management  
Entities for managing product and service catalogs with classifications and warehouse information.  
- **Entities:** `Producto`.

### 3. Pricing Module  
Stores flexible pricing for products and services.  
- **Entities:** `Precio`.

### 4. Billing (Master-Detail)  
Entities for managing customer invoices and their details.  
- **Entities:** `Factura`, `Factura_Detalle`.

### 5. Accounts Receivable  
Handles credit terms and payment conditions for invoices.  
- **Entities:** `CuentasXCobrar`.

## Prerequisites
- MySQL Workbench.
- SQL Server.

## Steps to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/aurorabogantes/Retail_ERP_Entity_Relationship_Model.git
2. Import the SQL scripts into your SQL Server environment.
3. Execute the table creation script to set up the database.
4. Run the sample data insertion script.
5. Execute the provided DQL scripts for reporting and XML generation.

## Contributing
Contributions are welcome! Feel free to fork the repository and submit a pull request.

## License
This project is licensed under the [MIT LICENSE](LICENSE). See the [LICENSE](LICENSE) file for details.
