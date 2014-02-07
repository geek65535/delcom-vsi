#!/usr/bin/ruby
#

require 'libusb'

module Delcom

	class VSI
		VENDORID  = 4037
		PRODUCTID = 4643
		#VENDORID  = 0x0fc5
		#PRODUCTID = 0x1223
		def self.test
			puts "in Delcom::VSI!"
		end

		usb = LIBUSB::Context.new
		vsi = usb.devices(:idVendor => VENDORID, :idProduct => PRODUCTID).first
		vsi.open_interface(0) do |handle|
			  handle.control_transfer(
				  :bmRequestType => 0x40,
				  :bRequest => 0xa0,
				  :wValue => 0xe600,
				  :wIndex => 0x0000,
				  :dataOut => 1.chr)
		end

	end

end
