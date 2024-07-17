def cal_points(operations)
    scores = []
    operations.each do |score|
        case score
        when "C"
            scores.pop()
        when "D"
            scores.push(scores[-1] * 2)
        when "+"
            scores.push(scores[-2] + scores[-1])
        else
            scores.push(score.to_i)
        end
    end
    puts scores.sum
end

puts "FIRST: "
cal_points(["5","2","C","D","+"]) ## 30
puts "SECOND: "
cal_points(["5","-2","4","C","D","9","+","+"])  ## 27
puts "THIRD: "
cal_points(["1","C"])  ##  0