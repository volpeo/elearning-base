rails = Course.create(name: "Ruby On Rails")

models = rails.chapters.create(name: "Models")

# first item is a lesson
models.items << Lesson.create(name: "What is Active Record?", content: "Lesson content here")

# then 2 exos
models.items << Exercice.create(name: "The Active Record pattern", content: "Exo about active record pattern")
models.items << Exercice.create(name: "Object Relational Mapping", content: "Exo about ORM")
models.items << Exercice.create(name: "Active Record as an ORM Framework", content: "Exo about ORM")

# a second lesson
models.items << Lesson.create(name: "Convention over Configuration in Active Record", content: "Lesson content here")

# 3 exos
models.items << Exercice.create(name: "Naming Conventions", content: "Exo about naming convention")
models.items << Exercice.create(name: "Schema Conventions", content: "Exo about schema convention")

# a summary lesson
models.items << Lesson.create(name: "Model summary", content: "Lesson content here")

# an exam
models.items << Exam.create(name: "Rails Models exam", content: "Exam content here")


# You can go to next course with : next_item = Course.first.chapters.first.items.first.lower_item
# Then go to next chapter with: next_item.chapter.lower_item