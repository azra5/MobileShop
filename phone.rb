#file: phone.rb
require_relative 'product.rb'

class Phone	< Product
	attr_accessor :specs

	def initialize(params = {})
		super(params);
		@specs = params.fetch(:specs, {})
  end

	def to_s
		s = '';
		s = s + 'Model: ' + @model + "\n";
		s = s + 'Price: ' + @price.to_s + "\n";
		s = s + 'Specs: ';
		s = s + printSpecs;
		return s;
	end

	def printSpecs
		s = '';
				specs.each do |key, value|
	  			s = s + "	#{key}: " + value.to_s + "\n";
				end
		return s
	end

end
