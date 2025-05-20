*&---------------------------------------------------------------------*
*& Report zha_gai_w1_dd2_6
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report zha_gai_w1_dd2_6.

types: begin of customer,
         customer_id type char8,
         first_name  type string,
         last_name   type string,
         email       type string,
       end of customer.
types: customers type standard table of customer with empty key.

include zha_gai_w1_dd2_6_class.

start-of-selection.
  data(musteri) = value customer( customer_id = 'CUST0001' first_name = 'Ali'   last_name = 'Yılmaz' email = 'ali.yilmaz@example.com' ).
  data(lo_customer) = new zcl_customer_info( musteri ).
  lo_customer->display_customer( ).

  musteri = value #( customer_id = 'CUST0003' first_name = 'Mert'  last_name = 'Kaya'   email = 'mert.kaya@example.com' ).
  data(lo_customer2) = new zcl_customer_info( musteri ).
  lo_customer->display_customer( ).
