/*        // INSTRUCTION SET \\
    // createThreads(threads:int, threadPriority:int) \\
    // x7Thread(threadPriority:int, threadConfig:table) \\
    // setTask(task : x7Tasks:int?) \\

*/

         // CPU \\

v.x7 :: x7Bridge :: createThreads(2800, ...) // threadPriority filled by taskThreadPriority \\

v.x7 :: x7ThreadScheduler.taskScheduled(function(task, thread) {
    v.x7 :: x7Thread:thread :: setTask(x7Tasks:task)
})

v.x7 :: x7ThreadEvents.taskCompleted(function(task, thread) {
    v.x7 :: hardCacheThread(x7Thread:thread)
})

        // GPU \\

x7.GPUFREE :: x7ThreadAssigner
