module Ruboty
  module Handlers
    class Yasy < Base
      env :SUSHIYUKI_DEFAULT_EMOTION, "You can configure default emotion. (e.g. 'wet') Also can set 'random'.", optional: true

      on /寿司|鮨|スシ|:sushi:|🍣/, name: 'gossip', description: ':sushi: | 壁 | :ear:', all: true

      on /sushi list/, name: 'list', description: 'show emotions list'

      on /sushi me ?(?<emotion>.*)/, name: 'hey_omachi', description: 'incoming sushiyuki'

      def gossip(message)
        Ruboty::Yasy::Actions::Gossip.new(message).call
      end

      def list(message)
        Ruboty::Yasy::Actions::List.new(message).call
      end

      def hey_omachi(message)
        Ruboty::Yasy::Actions::HeyOmachi.new(message).call
      end
    end
  end
end
