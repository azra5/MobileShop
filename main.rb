require_relative 'store.rb'

class Main
if __FILE__ == $0

	new_store = Store.new(:name => 'Apple store', :street => 'Franca Lehara bb', :web_site => 'www.apple.com');

	new_store.addPhones

	puts new_store.to_s

	new_store.printPhonesWithBlueTooth;
	new_store.printExpensivePhones;
	new_store.printCheaperPhones;
	new_store.printPhonesInStock;
	new_store.printPhonesWithAndroidOS;

end
end
