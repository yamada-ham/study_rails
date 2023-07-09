module DebugHelper
  class Debug
    # オブジェクトや配列を改行してログ出力
    # @param data [Object]
    # @return [void]
    def print_r(data)
      data_str = data.inspect
      format_data = data_str.gsub(",", ",\n")
      Rails.logger.debug(format_data)
    end
  end
end
  