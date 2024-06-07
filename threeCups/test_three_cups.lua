luaunit = require('luaunit')
package.path = package.path .. ';./threeCups/?.lua'

get_ball_position = require('three_cups')

TestGetBallPosition = {}

function TestGetBallPosition:testOneSwapA()
    luaunit.assertEquals(get_ball_position.get_ball_position('A'), 'middle')
end

function TestGetBallPosition:testOneSwapB()
    luaunit.assertEquals(get_ball_position.get_ball_position('B'), 'left')
end

function TestGetBallPosition:testOneSwapC()
    luaunit.assertEquals(get_ball_position.get_ball_position('C'), 'right')
end

function TestGetBallPosition:test_two_swaps_AA()
    luaunit.assertEquals(get_ball_position.get_ball_position('AA'), 'left')
end

function TestGetBallPosition:test_two_swaps_AB()
    luaunit.assertEquals(get_ball_position.get_ball_position('AB'), 'right')
end

function TestGetBallPosition:test_two_swaps_AC()
    luaunit.assertEquals(get_ball_position.get_ball_position('AC'), 'middle')
end

function TestGetBallPosition:test_two_swaps_BA()
    luaunit.assertEquals(get_ball_position.get_ball_position('BA'), 'middle')
end

function TestGetBallPosition:test_two_swaps_BC()
    luaunit.assertEquals(get_ball_position.get_ball_position('BC'), 'right')
end

function TestGetBallPosition:test_three_swaps_ABC()
    luaunit.assertEquals(get_ball_position.get_ball_position('ABC'), 'left')
end

function TestGetBallPosition:test_three_swaps_ACB()
    luaunit.assertEquals(get_ball_position.get_ball_position('ACB'), 'right')
end

function TestGetBallPosition:test_three_swaps_BCA()
    luaunit.assertEquals(get_ball_position.get_ball_position('BCA'), 'right')
end

function TestGetBallPosition:test_three_swaps_CAB()
    luaunit.assertEquals(get_ball_position.get_ball_position('CAB'), 'middle')
end

os.exit(luaunit.LuaUnit.run())
