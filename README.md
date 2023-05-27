# Car Shop Database Schema 🚗🏭

This repository contains the SQL code for creating the database schema for a car shop. The schema includes several tables that store information about car brands, car parts, shops, shop owners, cars, customers, and their relationships.

## Database Schema 🗂️

- 🏷️ **CarBrands**: Stores information about car brands.
- 🛠️ **CarParts**: Contains details of various car parts.
- 🏢 **Shops**: Stores information about car shops.
- 👥 **ShopOwners**: Stores details of shop owners.
- 🚙 **Cars**: Contains information about cars available in the shop.
- 🧑‍🤝‍🧑 **Customers**: Stores information about customers and their assigned cars.
- 🚗🛠️ **CarPartsMapping**: Establishes a relationship between cars and their corresponding parts.

## Usage ⚙️

To set up the database and create the tables, execute the provided SQL code in a SQL management tool or environment of your choice. Ensure that the SQL code is executed in the correct order, as listed in the provided code.
# Database Design 📚💻

## Entities and Attributes 📝

1. 🚘 CarBrands
   - 🔑 BrandID (Primary Key)
   - 🔤 BrandName
   - 🌍 CountryOfOrigin
   - ⏳ YearFounded
   - 👤 CEOName
   - 📍 HeadquartersAddress
   - 🌐 Website

2. ⚙️ CarParts
   - 🔑 PartID (Primary Key)
   - 🔤 PartName
   - 📝 Description
   - 💲 Price
   - 🏭 SupplierName
   - 📞 SupplierContactNumber
   - 📍 SupplierAddress

3. 🏪 Shops
   - 🔑 ShopID (Primary Key)
   - 🔤 ShopName
   - 🔗 OwnerID (Foreign Key)
   - 📍 Location
   - 📞 PhoneNumber
   - ⏰ OpeningHours
   - 🌐 Website
   - 📧 Email

4. 👥 ShopOwners
   - 🔑 OwnerID (Primary Key)
   - 👤 OwnerName
   - 📞 ContactNumber
   - 📧 Email
   - 📍 Address

5. 🚗 Cars
   - 🔑 CarID (Primary Key)
   - 🔗 BrandID (Foreign Key)
   - 💲 Price
   - 📅 ManufacturingDate
   - 🔗 ShopID (Foreign Key)
   - 🛣️ Mileage
   - 🌈 Color
   - 🔤 VIN
   - 🔄 TransmissionType
   - 🛠️ EngineType
   - ⛽ FuelType
   - 🚪 NumDoors
   - 💺 NumSeats
   - 🔢 NumCylinders
   - 🐎 Horsepower
   - 💪 Torque
   - ⚖️ Weight
   - 📏 Length
   - 📐 Width
   - 📊 Height
   - 🚐 Wheelbase

6. 🧍 Customers
   - 🔑 CustomerID (Primary Key)
   - 🔑 Token
   - 📍 ShopLocation
   - 🔗 CarID (Foreign Key)

7. 🗺️ CarPartsMapping
   - 🔗 CarID (Foreign Key)
   - 🔗 PartID (Foreign Key)

## Relationships 💞

- CarBrands and Cars: One-to-many 👥, as one brand can have many cars, but each car belongs to one brand.
- Shops and Cars: One-to-many 👥, as one shop can have many cars, but each car is sold in one shop.
- Shops and ShopOwners: One-to-one 👤, as each shop has one owner, and each owner owns one shop.
- Cars and Customers: One-to-many 👥, as one car can be of interest to many customers, but each customer is interested in one car.
- Cars and CarParts through CarPartsMapping: Many-to-many 🔀, as one car can have many parts, and each part can be used in many cars.

## Hierarchical Structures 🌳

A hierarchical structure can be seen in the relationship between CarBrands, Cars, and Customers - where CarBrands could be considered a higher-level entity, with Cars under it, and Customers under Cars.

## 🌟 **Contributing** 🌟

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated. ✨

1. 🍴 Fork the Project
2. 🌿 Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. 💾 Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. 📤 Push to the Branch (`git push origin feature/AmazingFeature`)
5. 🔓 Open a Pull Request

