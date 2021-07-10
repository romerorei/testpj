# README


# Test Técnico Backend Developer PJ


# A continuación los detalles sobre el resultado obtenido en la creación de API para ordenes.

- CRUD creado para los modelos Store, Product y Order con sus respectivas relaciones
- Se hizo deploy de la app en heroku ( https://test-pj.herokuapp.com/ )
- Se pueden probar los endpoints a través de POSTMAN
# ORDER:
 - URL https://test-pj.herokuapp.com/ (DEFAULT ENDPOINT)
   - Ejemplo para crear una orden en postman:
    { 
        "store_id": "4",
        "order_products_attributes": [
            {"product_id": "3"},
             {"product_id": "4"},
              {"product_id": "5"}   
              ]
    }

# STORE:
 - URL https://test-pj.herokuapp.com/stores
# PRODUCT:
- URL https://test-pj.herokuapp.com/products
