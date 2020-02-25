# DB Schema for Josh Pizzas
---

- PizzaMenu table
  - id  (primary key)
  - name
  - decription
  - veg_nonveg
  - base_price

`This table will contain all the items in the menu of Josh Pizzas. The pizza sizes available would be *Small(1)* *Medium(1.5)* and *Large(2.5)* Values in brackets are its multiplier. The price for a particular item will be calculated as **size_multiplier X base_price**`

- CartItem table
  - id (primary key)
  - pizza_id (foreign key)
  - quantity
  - size
  - comments

`CartItem will contain a record of each item that the customer orders. Each record will be used to calculate subtotal as **base_price X size X quantity**`

- Cart table
  - id (primary key)
  - table_number
  - cart_item_id (foreign key)

`Cart will contain the mapping of cart items to a single restaurant table`

- Invoice table
  - invoice_number (primary key)
  - cart_id (foreign key)
  - total
  - taxes
  - discount_rate
  - payment_mode
  - customer_feedback

  `This table will be used to generate final invoice and reports`