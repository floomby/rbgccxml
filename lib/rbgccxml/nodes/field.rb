module RbGCCXML

  # Represents a <Field> node, which is a Class's instance variable
  class Field < Node

    # Get the Node representing this field's type
    def cpp_type
      XMLParsing.find_type_of(node, "type")
    end

    # See Node#to_cpp
    def to_cpp(qualified = false)
      "#{self.cpp_type.to_cpp(qualified)} #{self.name}"
    end

  end

end