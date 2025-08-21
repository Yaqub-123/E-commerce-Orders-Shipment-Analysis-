# E-commerce-Orders-Shipment-Analysis-  

## 🔹 Project Overview  
This project analyzes an **E-commerce Supply Chain dataset** containing **Orders, Products, Suppliers, and Shipments**.  
The goal was to uncover business insights related to **revenue, suppliers, shipments, and customer demand**, and finally build an **interactive Power BI dashboard**.  

---

## 🔹 Tools & Technologies  
- **Python** 🐍 → Data Cleaning, Preprocessing, EDA (Pandas, NumPy, Matplotlib, Seaborn)  
- **SQL** 🗄️ → Writing complex queries to extract KPIs & business insights  
- **Power BI** 📊 → Building an interactive dashboard to visualize insights  

---

## 🔹 Dataset  
The dataset consists of 4 linked tables:  
1. **Products** → Product details, categories, suppliers, unit price, stock levels  
2. **Orders** → Order details including quantity, warehouse, and status  
3. **Shipments** → Shipping details including mode, cost, ship & delivery dates  
4. **Suppliers** → Supplier information and country  

---

## 🔹 Key KPIs & Results  
- **Total Orders** → 7,461  
- **Total Quantities Sold** → 3.78M  
- **Total Revenue** → **$914M**  
- **Average Order Value** → $506  
- **Delivered Orders** → 3,332  
- **Cancelled Orders** → 375  
- **Pending Orders** → 1,449  
- **Average Delivery Time** → 17.19 days  
- **Average Shipping Cost** → $971  

---

## 🔹 Business Insights  
1. **Revenue Performance**  
   - Top categories: **Cables & Components** generated the most revenue.  
   - **Sensors** had high order volume but low revenue → low-value items.  
   - **Display Units** had high stock levels but generated less revenue → inefficient inventory use.  

2. **Shipping & Logistics**  
   - **Air Freight ($226M, 24.68%)** and **Rail ($224M, 24.53%)** were the highest revenue-generating modes.  
   - Average delivery time was **17.19 days**, suggesting reliance on slower shipping modes.  

3. **Warehouse & Regional Insights**  
   - **Berlin Warehouse** generated the most revenue, orders, and quantities sold.  
   - **USA contributed $170M revenue** and had the highest stock levels, making it a key market.  

4. **Supplier Analysis**  
   - Suppliers **S048 & S027** contributed the highest revenue.  
   - Supplier-country analysis showed the **USA leads in both revenue and stock levels**.  

---

## 🔹 Business Recommendations  
- Optimize categories like **Display Units & Sensors** with high stock but low revenue.  
- Reduce **average delivery time** to improve customer satisfaction.  
- Focus on **Berlin warehouse and USA market** as primary growth drivers.  
- Strengthen partnerships with **top suppliers (S048, S027)** while reviewing underperforming ones.  
- Explore cost optimization in **Air Freight & Rail shipments** while maintaining delivery speed.  

---

## 🔹 Project Workflow  
1. **Python** → Data Cleaning, Handling Nulls, Preprocessing, Exploratory Data Analysis  
2. **SQL** → Writing queries to calculate KPIs (Revenue, Orders, Delivery Time, Supplier Performance, Category Analysis)  
3. **Power BI** → Building an interactive dashboard for business insights  

---

## 🔹 Dashboard Preview  
👉   ![Power BI Dashboard](https://github.com/Yaqub-123/E-commerce-Orders-Shipment-Analysis-/blob/main/Power%20Bi%20-%20Dashboard.png)
 

---
## ​ SQL Queries
All the SQL queries used to generate KPIs and derive insights are available here:  
[View SQL Queries (project).sql](https://github.com/Yaqub-123/E-commerce-Orders-Shipment-Analysis-/blob/main/SQL%20Queries%20(project).sql)

---
##  Python Analysis Notebook  
[View Python Analysis Notebook (Data Cleaning & Data Handling)](https://github.com/Yaqub-123/E-commerce-Orders-Shipment-Analysis-/blob/main/Python%20file-%20Data%20Analysis%2C%20Data%20Cleaning%2C%20Data%20Handling.ipynb)

