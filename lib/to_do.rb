class Task
  @@all_tasks = []  # class variable

  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all_tasks
  end

  define_method(:save) do
    @@all_tasks.push(self)  # self is what we're calling the method on
  end

  define_singleton_method(:clear) do # clear the array between spec runs
    @@all_tasks = []
  end

end
