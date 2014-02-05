delcom-vsi
===============

ruby interface to Delcom Engineering "Visual Signal Indicator" (VSI)

interface to Delcom Engineering VSI, first generation (http://www.delcomproducts.com/products_USBLMP.asp). This should work with the second generation, but I don't have a unit to test with.

This is based on a Perl module that Wade Johnson and I built: http://search.cpan.org/dist/Device-Delcom-VSI/

To help with permisions, create a file called /etc/udev/rules.d/99-delcom-vsi.rules with this line:
ATTR{"idVendor"}="0fc5", ATTR{idProduct}="1223", MODE="0666"

You'll need the libusb and libusb-dev packages, as well as the ruby-dev package.
