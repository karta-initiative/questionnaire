# frozen_string_literal: true

class Survey::QuestionsType
  @@questions_types = {
    multiple_choice: 1,
    single_choice: 2,
    number: 3,
    string: 4,
    text: 5,
    file_upload: 6,
  }

  def self.questions_types
    @@questions_types
  end

  def self.questions_types_title
    titled = {}
    Survey::QuestionsType.questions_types.each { |k, v| titled[k.to_s.titleize] = v }
    titled
  end

  def self.questions_type_ids
    @@questions_types.values
  end

  def self.questions_type_keys
    @@questions_types.keys
  end

  @@questions_types.each do |key, val|
    define_singleton_method key.to_s do
      val
    end
  end
end
