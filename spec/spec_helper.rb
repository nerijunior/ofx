require 'ofx_br'

RSpec::Matchers.define :have_key do |key|
  match do |hash|
    hash.respond_to?(:keys) &&
      hash.keys.is_a?(Array) &&
      hash.keys.include?(key)
  end
end
