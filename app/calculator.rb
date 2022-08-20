class Calculator
    def calculate(firstNumber, secondNumber, operator)
        case operator
        when '+'
            return Integer(firstNumber) + Integer(secondNumber)
        when '-'
            return Integer(firstNumber) - Integer(secondNumber)
        when '*'
            return Integer(firstNumber) * Integer(secondNumber)
        when '/'
            return Integer(firstNumber) / Integer(secondNumber)
        end
    end
end