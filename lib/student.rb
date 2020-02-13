class Student
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end

  def self.create_table
    sql = <<-SQL
      Create Table If Not EXISTS students (
        id INTEGER PRIMARY KEY,
        name Text,
        grade Integer
      )
      SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
      sql = <<-SQL
        Drop Table students
      SQL
    DB[:conn].execute(sql)
  end 
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
