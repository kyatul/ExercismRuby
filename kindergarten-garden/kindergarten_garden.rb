# Exercism Ruby - Kindergarten Garden
class Garden
  @@students = []
  PLANTS = { 'R' => :radishes, 'C' => :clover, 'V' => :violets, 'G' => :grass}.freeze
  STUDENTS = %w(alice bob charlie david eve fred ginny harriet ileana joseph kincaid larry).freeze

  def initialize(data, students=STUDENTS)
    @rows = data.split("\n")
    @students = students.sort
    create_methods
  end

  def create_methods
    @students.each_with_index do |student, index|
      self.class.send(:define_method, student.downcase) do
        result = []
        result.push(PLANTS[(@rows[0])[2 * index]])
        result.push(PLANTS[(@rows[0])[2 * index + 1]])
        result.push(PLANTS[(@rows[1])[2 * index]])
        result.push(PLANTS[(@rows[1])[2 * index + 1]])
      end
    end
  end
end
