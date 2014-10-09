module Ruboty
  module Yasy
    module Actions
      class List < Ruboty::Actions::Base
        def call
          message.reply(Ruboty::Yasy::Sushi.emotions.join($/))
        end
      end
    end
  end
end
