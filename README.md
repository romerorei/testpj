# README


# Test Técnico Backend Developer PJ


#A continuación los detalles sobre el resultado obtenido en la creación de API para ordenes.

- CRUD creado para los modelos Store, Product y Order con sus respectivas relaciones
- Se hizo deploy de la app en heroku ( https://serene-river-70641.herokuapp.com/orders )
- Se escribieron pruebas de modelo y controlador con RSpec
- Se pueden probar los endpoints a través de POSTMAN
# ORDER:
 URL https://serene-river-70641.herokuapp.com/orders (DEFAULT ENDPOINT)
 Ejemplo para crear una orden en postman:
    { 
        "store_id": "4",
        "order_products_attributes": [
            {"product_id": "3"},
             {"product_id": "4"},
              {"product_id": "5"}   
              ]
    }

# STORE:
 URL https://serene-river-70641.herokuapp.com/stores
# PRODUCT:
URL https://serene-river-70641.herokuapp.com/products
