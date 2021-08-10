require 'open-uri'
require 'nokogiri'
require 'bigdecimal'

require 'kconv'

require 'ofx_br/errors'
require 'ofx_br/parser'
require 'ofx_br/parser/ofx102'
require 'ofx_br/parser/ofx103'
require 'ofx_br/parser/ofx211'
require 'ofx_br/foundation'
require 'ofx_br/balance'
require 'ofx_br/account'
require 'ofx_br/sign_on'
require 'ofx_br/status'
require 'ofx_br/statement'
require 'ofx_br/transaction'
require 'ofx_br/version'

def OFX(resource, &block)
  parser = OFX::Parser::Base.new(resource).parser

  if block_given?
    if block.arity == 1
      yield parser
    else
      parser.instance_eval(&block)
    end
  end

  parser
end
