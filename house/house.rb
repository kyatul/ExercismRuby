# Exercsim Ruby - House
class House
  HOUSE_MEMBERS = {
                  'malt' => 'lay in the house',
                  'rat' => 'ate',
                  'cat' => 'killed',
                  'dog' => 'worried',
                  'cow with the crumpled horn' => 'tossed',
                  'maiden all forlorn' => 'milked',
                  'man all tattered and torn' => 'kissed',
                  'priest all shaven and shorn' => 'married',
                  'rooster that crowed in the morn' => 'woke',
                  'farmer sowing his corn' => 'kept',
                  'horse and the hound and the horn' => 'belonged to'
                  }
  def self.recite
    song = ''
    song << "This is the house that Jack built.\n"

    member_index = 0
    while member_index < HOUSE_MEMBERS.size
      song << "\n"
      song << sing_till_member(member_index)
      member_index += 1
    end
    song
  end

  def self.sing_till_member(member)
    song = ''
    HOUSE_MEMBERS.each_with_index do |(name, action), member_index|
      unless member_index > member
        song = " the #{name}\nthat #{action}" << song
      end
    end
    song = 'This is' << song
    song << " that Jack built.\n"
  end
end
