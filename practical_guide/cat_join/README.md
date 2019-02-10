This example demonstrates how cat can be used to jpin together content from multiple files  
Firtstly, issue the commands:
```bash
cat stationery
cat tape
cat pens
# put everything together
cat stationery tape pens > supply_orders
cat supply_orders
# supply_orders contains all the content displayed above
