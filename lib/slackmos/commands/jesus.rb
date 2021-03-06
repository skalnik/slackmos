module Slackmos
  module Commands
    # Random help jesus images
    class Jesus
      attr_reader :command
      def initialize(command)
        @command = command
      end

      def image
        self.class.images.sample
      end

      def count
        result = 1
        matches = command.command_text.match(/x(\d+)/)
        if matches
          result = Integer(matches[1])
        end
        result = 3 if result > 10
        result
      end

      def results
        (1..count).map { image }
      end

      # rubocop:disable Metrics/MethodLength
      # rubocop:disable Metrics/LineLength
      def self.images
        [
          "http://cdn.lstoll.net/dump/jesus/Alternative-Career-Choices-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Alternative-Career-Choices.jpg",
          "http://cdn.lstoll.net/dump/jesus/Bad-News-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Batman-Symbol-500x412.jpg",
          "http://cdn.lstoll.net/dump/jesus/Been-there-All-Morning-500x305.jpg",
          "http://cdn.lstoll.net/dump/jesus/Blood-Clean-Up-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Brain-Splatter-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Bullet-Stays-in-500x398.jpg",
          "http://cdn.lstoll.net/dump/jesus/Burnt-Pie-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Busy-Man-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Canadian-Girls-Jesus-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Child-Support-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Children-In-Hell-Jesus-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Coffee-Pee.jpg",
          "http://cdn.lstoll.net/dump/jesus/Deformed-Face-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Dentist-Jesus-500x406.jpg",
          "http://cdn.lstoll.net/dump/jesus/Dentist-Stab-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Driving-Lessons-Hobo-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Eat-the-Dog-Jesus.jpg",
          "http://cdn.lstoll.net/dump/jesus/Eat-the-Hay-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Fishing-Jesus-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Forbidden-Love-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/From-the-North-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/GTA-Jesus-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Good-Dog.jpg",
          "http://cdn.lstoll.net/dump/jesus/Gross-Jesus-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Gym-Troll-Jesus-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Horrors-of-War-500x387.jpg",
          "http://cdn.lstoll.net/dump/jesus/Inappropriate-Touching-Jesus-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Jesus-Does-Magic-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Jesus-Gets-High-500x430.jpg",
          "http://cdn.lstoll.net/dump/jesus/Jews-Jesus-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Just-Like-Haiti-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Long-Head-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Magnets-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Office-Space-499x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Play-Freebird-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Play-Organ-Jesus-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Poor-Carl-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Poor-Jimmy-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Position-Jesus-499x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Racist-Jesus-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Revived-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Running-Jesus-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/STFU-Jesus-Tree-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Sandwiches-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Serial-Killer-Jesus-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Shaking-Arm-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Staring-Contest-500x400.jpg",
          "http://cdn.lstoll.net/dump/jesus/Struggling-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/System-32-Jesus-500x300.jpg",
          "http://cdn.lstoll.net/dump/jesus/Tell-Them-Anyway-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/There-Yet-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Tickling-the-Dentist-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Tongue-Kiss-lol-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Tree-Screwing-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Trying-to-Drive-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Wasted-Life-500x375.jpg",
          "http://cdn.lstoll.net/dump/jesus/Welder-Jesus-500x374.jpg",
          "http://cdn.lstoll.net/dump/jesus/Why-Jesus-Why-500x419.jpg",
          "http://cdn.lstoll.net/dump/jesus/Why-Would-I-Lie-500x375.jpg"
        ]
      end
      # rubocop:enable Metrics/MethodLength
      # rubocop:enable Metrics/LineLength
    end
  end
end
