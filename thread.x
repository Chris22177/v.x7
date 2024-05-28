/*
    // x7Thread(priority : int, options : obj) \\
    // setTask(task : x7Tasks:int?) \\

*/

         // CPU \\

v.x7 :: x7Bridge :: x7Thread(7, ...)

v.x7 :: x7ThreadScheduler.taskScheduled(function(nextTask, nextOpenThread) {
  v.x7 :: x7Thread:nextOpenThread :: setTask(x7Tasks:nextTask)
})

        // GPU \\

x7.GPUFREE :: x7ThreadAssigner
