require_relative 'invoice_creator'
require_relative 'component'

class Main
  my_invoice_creator = InvoiceCreator.new("Brick Wall", 100, 2, 1)
  my_invoice_creator.print_details

  my_invoice_creator = InvoiceCreator.new("House", 10000, 20, 10)
  my_invoice_creator.print_details
end
