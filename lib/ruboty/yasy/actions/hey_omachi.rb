module Ruboty
  module Yasy
    module Actions
      class HeyOmachi < Ruboty::Actions::Base
        def call
          message.reply(Ruboty::Yasy::Sushi.new(message[:emotion]))
        end
      end
    end
  end
end
