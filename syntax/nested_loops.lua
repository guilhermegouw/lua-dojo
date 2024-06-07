for i = 0, 10 do
    local j = 0
    while j < 10 do
        print("j: " .. j .. ", i is: " .. i)
        if j == 2 then
            print("j is: " .. j .. ", i is: " .. i)
            break
        end
        j = j + 1
    end
end

