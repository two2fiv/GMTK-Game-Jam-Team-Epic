playbackIndex = 0
initXsp=global.initialXsp
initYsp=global.initialYsp
initX = global.initialX
initY = global.initialY

ysp = initYsp
xsp = initXsp
x = initX
y = initY

canJump = false

inputX = global.inputX
inputY = global.inputY

initLength = array_length(inputX)

global.cloneCount += 1
cloneIndex = global.cloneCount
cloneLimit = 1