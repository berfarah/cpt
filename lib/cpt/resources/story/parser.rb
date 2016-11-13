require "yaml"

module CPT
  class Story
    class Data
      ATTRIBUTES = %i(title points requester owners labels).freeze
      attr_reader *ATTRIBUTES, :body

      def initialize(data = {})
        data.each { |method_name, value| send("#{method_name}=", value) }
      end

      private

      attr_writer *ATTRIBUTES, :body
    end

    class Parser
      YAML_REGEX = /\A---(.|\n)*?---\n*/

      def self.parse(path)
        new(path).parse
      end

      def initialize(path)
        @body = File.read(path)
      end

      def parse
        Data.new(attributes.merge("body" => markdown))
      end

      private

      def markdown
        body.sub(YAML_REGEX, "")
      end

      def attributes
        YAML.load(body)
      end

      attr_reader :body
    end
  end
end
