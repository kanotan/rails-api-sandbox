module CustomMatchers
  module ActiveModel
    def validate_half_size_of(attr)
      ValidateHalfSizeOfMatcher.new(attr)
    end

    class ValidateHalfSizeOfMatcher < Shoulda::Matchers::ActiveModel::ValidationMatcher
      def initialize(attribute)
        super(attribute)
      end

      def with_message(message)
        @expected_message = message if message
        self
      end

      def matches?(subject)
        super(subject)
        @expected_message ||= :half_size

        # 成功ケース
        ['123', 'abc', 'ｱｲｳｴｵ', '. ~', nil].each do |value|
          return false unless allows_value_of(value, @expected_message)
        end

        # 失敗ケース
        ['１２３', 'ａｂｃ', 'アイウエオ', '．　〜'].each do |value|
          return false unless disallows_value_of(value, @expected_message)
        end
      end

      def description
        "require #{@attribute} to be only half_size"
      end
    end
  end
end
