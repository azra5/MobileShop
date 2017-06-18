#file: store.rb
require_relative 'phone.rb'
require_relative 'product.rb'
class Store
	attr_accessor :name, :street, :web_site, :phones
	def initialize(params = {})
	     self.phones = []
			 @name = params.fetch(:name, "unknown")
			 @street = params.fetch(:street, "unknown")
			 @web_site = params.fetch(:web_site, "unknown")
	end

	def addPhones
		phones.push(Phone.new(:model => 'iPhone 6', :price => 1000,:in_Stock => 10, :specs => {"memory" => "64gb", "camera" => "12mpx", "bluetooth" => "true", "os" => "iOS"}));
		phones.push(Phone.new(:model => 'iPhone 7', :price =>1500, :in_Stock => 20,:specs => {"memory" => "128gb", "camera" => "12mpx", "bluetooth" => "true", "os" => "iOS"}));
		phones.push(Phone.new(:model =>'Samsung S5', :price =>500,:in_Stock => 10,:specs => {"memory" => "64gb", "camera" => "20mpx", "bluetooth" => "true", "os" => "Android"}));
		phones.push(Phone.new(:model =>'Nokia 3310', :price =>200,:in_Stock => 0,:specs => {"memory" => "512kb", "camera" => "none", "bluetooth" => "false", "os" => "none"}));
	end

	def printExpensivePhones
			result = @phones.select do |phone|
				phone.price > 1000
			end
			puts "Expensive phones: " + result.length.to_s + "\n";
			puts "=====================";
			printPhones(result);
			puts "---------------------";
	end

	def printCheaperPhones
			result = @phones.select do |phone|
				phone.price < 500
			end
			puts "Cheaper phones:" + result.length.to_s + "\n";
			puts "=====================";
			printPhones(result);
			puts "---------------------";	end

	def printPhonesWithBlueTooth
			result = @phones.select do |phone|
				phone.specs["bluetooth"] == "true"
			end
			puts "Phones with bluetooth: " + result.length.to_s + "\n";
			puts "=====================";
			printPhones(result);
			puts "---------------------";
	end

	def printPhonesInStock
			result = @phones.select do |phone|
				phone.in_Stock > 0
			end
			puts "Phones in stock: " + result.length.to_s + "\n";
			puts "=====================";
			printPhones(result);
			puts "---------------------";
	end

	def printPhonesWithAndroidOS
			result = @phones.select do |phone|
				phone.specs["os"] == "Android"
			end
			puts "Phones with Android OS: " + result.length.to_s + "\n";
			puts "=====================";
			printPhones(result);
			puts "---------------------";
	end

	def printPhones(phones)
		phones.select do |phone|
			puts phone.to_s
			puts "---------------------";
		end
	end

	def to_s
		s = ''
		s = s + '***********************';
		s = s + 'Name: ' + name.to_s + "\n";
		s = s + 'Street: ' + street.to_s + "\n";
		s = s + 'Website: ' + web_site.to_s + "\n";
		s = s + 'Total phones: ' + phones.length.to_s + "\n";
		s = s + 'Phones in stock: ' + numberOfPhonesInStock.to_s + "\n";
		s = s + '***********************';
		return s
	end

	def numberOfPhonesInStock
		result = @phones.select do |phone|
			phone.in_Stock > 0
		end
		return result.length
	end
end
