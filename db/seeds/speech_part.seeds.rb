# frozen_string_literal: true

begin
  if SpeechPart.present? && !SpeechPart.exists?
    SpeechPart.create!(
      [
        {
          de: 'Substativ',
          en: 'noun',
          es: 'Substativo',
          ru: 'существительное'
        },
        {
          de: 'Adjektiv',
          en: 'adjective',
          es: 'adjetivo',
          ru: 'прилагательное'
        },
        {
          de: 'Numerale',
          en: 'numeral',
          es: 'número',
          ru: 'числительное'
        },
        { de: 'Pronomen',
          en: 'pronoun',
          es: 'pronombre',
          ru: 'местоимение' },
        { de: 'Personalpronomen',
          en: 'personal pronoun',
          es: 'pronombre personal',
          ru: 'личное местоимение' },
        { de: 'Reflexivpronom',
          en: 'reflexive pronoun',
          es: 'pronombre reflexivo',
          ru: 'возвратное местоимение' },
        { de: 'Possessivpronom',
          en: 'possessiv pronoun',
          es: 'pronombre posesivo',
          ru: 'притяжательное местоимение' },
        { de: 'Demonstrativpronom',
          en: 'demonstrative pronoun',
          es: 'pronombre demostrativo',
          ru: 'указательное местоимение' },
        { de: 'Indefinitpronomen',
          en: 'indefinite pronoun',
          es: 'pronombre indefinido',
          ru: 'неопределённое местоимение' },
        { de: 'Relativpronom, Interrogativpronom',
          en: 'relative, interrogative pronoun',
          es: 'pronombre interrogativo y relativo',
          ru: 'вопросит. и относит. местоимение' },

        { de: 'verb', en: 'Verb', es: 'verbo', ru: 'глагол' },
        { de: 'Adverb', en: 'adverb', es: 'adverbio', ru: 'наречие' },
        { de: 'Präposition', en: 'preposition', es: 'preposición', ru: 'предлог' },
        { de: 'Konjuktion', en: 'conjunction', es: 'conjunción', ru: 'союз' },
        { de: 'Partikel', en: 'particle', es: 'partícula', ru: 'частица' },
        { de: 'Interjektion', en: 'interjection', es: 'interjección', ru: 'междометие' },
        { de: 'Artikel', en: 'article', es: 'artículo', ru: 'артикль' }
      ]
    )
    puts "===== #{SpeechPart.count} 'Speech Part' record(s) created"
  else
    puts "===== 'Speech Part' seeding skipped"
  end
rescue StandardError
  puts '----- Achtung! Something went wrong...'
end
