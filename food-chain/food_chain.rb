#Exercism Ruby - Food Chain
class FoodChain
  VERSION = 2

  @@animals = {
              'fly' => '',
              'spider' => 'It wriggled and jiggled and tickled inside her.',
              'bird' => 'How absurd to swallow a bird!',
              'cat' => 'Imagine that, to swallow a cat!',
              'dog' => 'What a hog, to swallow a dog!',
              'goat' => 'Just opened her throat and swallowed a goat!',
              'cow' => "I don't know how she swallowed a cow!"}

  @@animal_keys = ['fly', 'spider', 'bird', 'cat', 'dog', 'goat', 'cow']

  def self.prepend(module_name)
    include module_name
  end

  def self.song
    result = ''

    @@animals.each_with_index do |(key, value), index|
      result << "I know an old lady who swallowed a #{key}.\n"
      result << "#{value}\n" unless value.empty?

      temp_index = index
      while temp_index > 0
        result << "She swallowed the #{@@animal_keys[temp_index]} to catch the #{@@animal_keys[(temp_index - 1)]}"

        if @@animal_keys[(temp_index - 1)] == 'spider'
          result << ' that wriggled and jiggled and tickled inside her'
        end

        result << ".\n"
        temp_index -= 1
      end

      result << "I don't know why she swallowed the fly. Perhaps she'll die.\n"
      result << "\n"
    end
    result << "I know an old lady who swallowed a horse.\n"
    result << "She's dead, of course!\n"
  end
end
