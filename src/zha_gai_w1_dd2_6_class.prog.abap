*&---------------------------------------------------------------------*
*&  Include  zha_gai_w1_dd2_6_class
*&---------------------------------------------------------------------*

class zcl_customer_info definition.
  public section.
    methods: constructor
      importing iv_customer type customer.

    methods: get_full_name
      returning value(result) type string.

    methods: display_customer.

  protected section.
  private section.
    data: ptr_customer type ref to customer.
endclass.

class zcl_customer_info implementation.

  method constructor.
    ptr_customer = ref #( iv_customer ).
  endmethod.

  method display_customer.
    write /:  |Müşteri ID: { ptr_customer->customer_id }|,
              |İsim: { get_full_name(  ) }|,
              |Email: { ptr_customer->email }|.
  endmethod.

  method get_full_name.
    result = |{ ptr_customer->first_name } { ptr_customer->last_name }|.
  endmethod.

endclass.
