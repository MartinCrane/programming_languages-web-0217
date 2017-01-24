def reformat_languages(languages)

  data_by_language = {}

    languages.each do |xstyle, style_data|
      style_data.each do |language_name, language_name_data|
        data_by_language[language_name] = {}
      end
    end

    languages.each do |xstyle, style_data|
      style_data.each do |language_name, language_name_data|

        if data_by_language[language_name].has_key?(:style)
          puts "trig"
          data_by_language[language_name][:style].push(xstyle)
        else
          data_by_language[language_name] = {style: [xstyle]}
        end

        language_name_data.each do |character, caracter_data|
            data_by_language[language_name][:type] = caracter_data
        end

      end
    end

data_by_language

end
