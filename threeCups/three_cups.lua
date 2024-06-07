--[[
The Challenge

Borko has a row of three opaque cups:
- one at the left (location 1)
- one at the middle (location 2)
- one at the right (location 3).

There is a ball under the cup at the left.

It’s our job to keep track of the location of the ball as Borko swaps the
locations of the cups.

Borko can make three types of swap:
- A Swap the left and middle cups
- B Swap the middle and right cups
- C Swap the left and right cups

For example:

If Borko’s
ﬁrst swap is type A
then he swaps the left and middle cups;
because the ball starts at the left, this swap moves it to the middle.
If instead his ﬁrst swap is type B, then he swaps the middle and right cups;
the left cup stays where it is, so the ball doesn’t change locations.

Input

The input is one line of at most 50 characters.
Each character speciﬁes a type of swap that Borko makes: A, B, or C.

Output

Output the ﬁnal location of the ball:
1 if the ball is at the left
2 if the ball is at the middle
3 if the ball is at the right
]] --
local three_cups = {}

function three_cups.get_ball_position(swaps)
    local position = 'left'
    for swap in string.gmatch(swaps, ".") do
        if swap == 'A' then
            if position == 'left' then
                position = 'middle'
            elseif position == 'middle' then
                position = 'left'
            elseif position == 'right' then
                position = 'right'
            end
        elseif swap == 'B' then
            if position == 'left' then
                position = 'left'
            elseif position == 'middle' then
                position = 'right'
            elseif position == 'right' then
                position = 'middle'
            end
        elseif swap == 'C' then
            if position == 'left' then
                position = 'right'
            elseif position == 'middle' then
                position = 'middle'
            elseif position == 'right' then
                position = 'left'
            end
        end
    end
    return position
end

return three_cups

