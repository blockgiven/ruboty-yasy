module Ruboty
  module Yasy
    module Actions
      class Gossip < Ruboty::Actions::Base
        def call
          message.reply(Ruboty::Yasy::Sushi.new('sneak'))
        end
      end
    end
  end
end
