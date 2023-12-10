#include "tx_api.h"
 
#define THREAD_STACK_SIZE   1024
#define NUM_THREADS         5
 
TX_THREAD threads[NUM_THREADS];
UCHAR thread_stacks[NUM_THREADS][THREAD_STACK_SIZE];
 
TX_QUEUE task_queue;
UCHAR task_queue_buffer[10 * sizeof(ULONG)];

void tx_application_define(void *first_unused_memory);
 
void common_task_logic(ULONG thread_id, ULONG task_id)
{
    // Simulate a common task execution
    // No tracing in this version
    tx_thread_sleep(500);
}
 
void high_priority_thread_entry(ULONG param)
{
    ULONG task_id = 1;
 
    while (1)
    {
        // Simulate a condition for executing tasks only if task_id is odd
        if (task_id % 2 != 0)
        {
            common_task_logic(1, task_id);
            tx_queue_send(&task_queue, &task_id, sizeof(ULONG));
        }
 
        // Increment task_id
        task_id++;
 
        // Sleep for a while
        tx_thread_sleep(1000);
    }
}
 
void medium_priority_thread_entry(ULONG param)
{
    ULONG task_id = 1;
 
    while (1)
    {
        // Simulate a condition for executing tasks only if task_id is even
        if (task_id % 2 == 0)
        {
            common_task_logic(2, task_id);
            tx_queue_send(&task_queue, &task_id, sizeof(ULONG));
        }
 
        // Increment task_id
        task_id++;
 
        // Sleep for a while
        tx_thread_sleep(1500);
    }
}
 
void low_priority_thread_entry(ULONG param)
{
    ULONG received_task_id;
 
    while (1)
    {
        // Dequeue the task ID from the queue
        tx_queue_receive(&task_queue, &received_task_id, TX_WAIT_FOREVER);
 
        // Simulate processing the task
        common_task_logic(3, received_task_id);
 
        // Sleep for a while
        tx_thread_sleep(2000);
    }
}
 
void other_threads_entry(ULONG param)
{
    ULONG task_id = 1;
 
    while (1)
    {
        // Simulate other threads with different priorities
        common_task_logic(4, task_id);
 
        // Sleep for a while
        tx_thread_sleep(3000);
 
        // Increment task_id
        task_id++;
    }
}
 
int main(void)
{
    // Initialize ThreadX
    tx_kernel_enter();
 
    // Create task queue
    tx_queue_create(&task_queue, "TaskQueue", sizeof(ULONG), task_queue_buffer, sizeof(task_queue_buffer));
 
    // Create threads with different priorities
    tx_thread_create(&threads[0], "HighPriorityThread", high_priority_thread_entry, 0,
                     thread_stacks[0], THREAD_STACK_SIZE,
                     20, 20, TX_NO_TIME_SLICE,
                     TX_AUTO_START);
 
    tx_thread_create(&threads[1], "MediumPriorityThread", medium_priority_thread_entry, 0,
                     thread_stacks[1], THREAD_STACK_SIZE,
                     18, 18, TX_NO_TIME_SLICE,
                     TX_AUTO_START);
 
    tx_thread_create(&threads[2], "LowPriorityThread", low_priority_thread_entry, 0,
                     thread_stacks[2], THREAD_STACK_SIZE,
                     16, 16, TX_NO_TIME_SLICE,
                     TX_AUTO_START);
 
    tx_thread_create(&threads[3], "OtherThread1", other_threads_entry, 0,
                     thread_stacks[3], THREAD_STACK_SIZE,
                     14, 14, TX_NO_TIME_SLICE,
                     TX_AUTO_START);
 
    tx_thread_create(&threads[4], "OtherThread2", other_threads_entry, 0,
                     thread_stacks[4], THREAD_STACK_SIZE,
                     12, 12, TX_NO_TIME_SLICE,
                     TX_AUTO_START);
 
    // Start the scheduler
   tx_kernel_enter();
 
    return 0;
}