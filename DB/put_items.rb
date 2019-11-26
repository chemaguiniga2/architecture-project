require 'aws-sdk-dynamodb'

dynamodb = Aws::DynamoDB::Client.new

cont = 0



# dynamodb.put_item({
#     table_name: 'Questions',
#     item: {
#         'ID' => 2,
#         'Question' => 'Definition of the decorator pattern',
#         'Answer' => 'Consist of attaching additional responsibilities to an object dynamically, thus providing a flexible alternative to subclassing for extending functionality.',
#         'W1' => 'Provides an interface for creating families of related or dependent objects without specifying their concrete classes.',
#         'W2' => 'Its a general reusable solutio to a commonly occurring problem within a given context.',
#     }
# })

# dynamodb.put_item({
#     table_name: 'Questions',
#     item: {
#         'ID' => 3,
#         'Question' => 'What does adapter pattern do?',
#         'Answer' => 'Converts the interface of a class into another interface clients expect. It lets classes work together that couldnt otherwise because of incompatible interfaces',
#         'W1' => 'Consist of attaching additional responsibilities to an object dynamically, thus providing a flexible alternative to subclassing for extending functionality.',
#         'W2' => 'None of the other options.',
#     }
# })

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 4,
        'Question' => 'This design pattern provides a surrogate or placeholder for another object to control access to it.',
        'Answer' => 'Proxy',
        'W1' => 'Model-View-Controller',
        'W2' => 'Singleton',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 5,
        'Question' => 'This design pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes.',
        'Answer' => 'Abstract factory',
        'W1' => 'Factory method',
        'W2' => 'Strategy',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 6,
        'Question' => 'Given a language, this design pattern defines a representation for its grammar along with an evaluator that uses the representation to interpret sentences in the language.',
        'Answer' => 'Interpreter',
        'W1' => 'Observer',
        'W2' => 'Template Method',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 7,
        'Question' => 'In this design pattern, a problem, a problem can be made easier to solve by giving the user a convenient syntax for expressing the problem in the first place.',
        'Answer' => 'Domain-specific language',
        'W1' => 'Mediator',
        'W2' => 'Visitor',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 8,
        'Question' => 'This SOLID principle states that if a program module is using a base class can be replaced with a derived class without affecting the funcitonality of the program module.',
        'Answer' => 'Liskov substitution principle',
        'W1' => 'Open/Close Principle',
        'W2' => 'Interface segregation principle',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 9,
        'Question' => 'This SOLID principle states that a class or module should have one, and only one, reason to change.',
        'Answer' => 'Single responsibility principle',
        'W1' => 'Liskov substitution principle',
        'W2' => 'Dependency inversion principle',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 10,
        'Question' => 'This SOLID principle states that many client-specific interfaces are better than one general-purpose interface.',
        'Answer' => 'Interface segregation principle',
        'W1' => 'Open/Close principle',
        'W2' => 'Dependency inversion principle',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 11,
        'Question' => 'This SOLID principle states that many client-specific interfaces are better than one general-purpose interface.',
        'Answer' => 'Interface segregation principle',
        'W1' => 'Open/Close principle',
        'W2' => 'Dependency inversion principle',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 12,
        'Question' => 'Its a software architecture style in which a single application is developed as a suite of small services, each running in its own process and communicating with lightweight mechanisms, often an HTTP resource API.',
        'Answer' => 'Microservices',
        'W1' => 'Iterator',
        'W2' => 'Dependency inversion principle',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 13,
        'Question' => 'Converts the interface of a class into another interface clients expect. It lets classes work together that couldnt otherwise because of incompatible interfaces.',
        'Answer' => 'Adapter',
        'W1' => 'Command',
        'W2' => 'Proxy',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 14,
        'Question' => 'Provides a surrogate or placeholder for another object to control its access.',
        'Answer' => 'Proxy',
        'W1' => 'Abstract factory',
        'W2' => 'Microservices',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 15,
        'Question' => 'Attach additional responsibilities to an object dynamically, thus providing a flexible alternative to subclassing for extending functionality',
        'Answer' => 'Decorator',
        'W1' => 'Adapter',
        'W2' => 'Iterator',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 16,
        'Question' => 'Ensure a class has only one instance, and provide a global point of access to it.',
        'Answer' => 'Singleton',
        'W1' => 'Observer',
        'W2' => 'Command',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 17,
        'Question' => 'Define an interface for creating an object, but let subclasses decide which class to instanciate.',
        'Answer' => 'Factory method',
        'W1' => 'Adapter',
        'W2' => 'Singleton',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 18,
        'Question' => 'Provide an interface for creating families of related or dependent objects without specifying their concrete classes.',
        'Answer' => 'Abstract factory',
        'W1' => 'Observer',
        'W2' => 'Factory Method',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 19,
        'Question' => 'Which of the following are dynamic alternatives to the decorator pattern in Ruby',
        'Answer' => 'Module decorations',
        'W1' => 'Multiple dispatch',
        'W2' => 'Dependency inversion',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 20,
        'Question' => 'Creating the singleton instance before you actually need it is known as: ',
        'Answer' => 'Eager instantiation',
        'W1' => 'Lazy instantiation',
        'W2' => 'Strong instantiation',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 21,
        'Question' => 'Encapsulates a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations.',
        'Answer' => 'Command',
        'W1' => 'Composite',
        'W2' => 'Visitor',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 22,
        'Question' => 'Provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation',
        'Answer' => 'Iterator',
        'W1' => 'Template method',
        'W2' => 'Facade',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 23,
        'Question' => 'Composes objects into tree structures to represent part-whole hierarchies. It lets clients treat individual objects and compositions of objects uniformly.',
        'Answer' => 'Composite',
        'W1' => 'Decorator',
        'W2' => 'Strategy',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 24,
        'Question' => 'Defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notifies and updated automatically.',
        'Answer' => 'Observer',
        'W1' => 'Visitor',
        'W2' => 'Strategy',
    }
})

dynamodb.put_item({
    table_name: 'Questions',
    item: {
        'ID' => 25,
        'Question' => 'Defines a family of algorithms, encapsulates each one, and make them interchangeable. It allows the algorithm to vary independently from clients that use it.',
        'Answer' => 'Strategy',
        'W1' => 'Decorator',
        'W2' => 'Composite',
    }
})

puts 'Item has been put'