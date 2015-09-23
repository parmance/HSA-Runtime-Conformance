## Target executable name.
set (TARGET hsa_memory)

## Specify the SRC_DIR.
set (SRC_DIR "${CMAKE_SOURCE_DIR}/src/core/memory")

## Included source files.
set (SOURCE_FILES hsa_memory.c test_helper_func.c test_memory_allocated_vector_copy_heap.c test_memory_allocated_vector_copy_stack.c test_memory_allocate_max_size.c test_memory_allocate_zero_size.c test_memory_basic_allocate_free.c test_memory_basic_register_deregister.c test_memory_coherence_after_register.c test_memory_concurrent_allocate.c test_memory_concurrent_deregister.c test_memory_concurrent_free.c test_memory_concurrent_register.c test_memory_copy_allocated_to_allocated.c test_memory_copy_allocated_to_registered.c test_memory_copy_registered_to_allocated.c test_memory_copy_registered_to_registered.c test_memory_device.c test_memory_group_dynamic_allocation.c test_memory_minimum_region.c test_memory_region_concurrent_get_info.c test_memory_region_alignment.c test_memory_register_subrange.c test_memory_vector_copy_between_stack_and_heap.c test_memory_vector_copy_heap_not_registered.c test_memory_vector_copy_heap_registered.c test_memory_vector_copy_stack_not_registered.c test_memory_vector_copy_stack_registered.c test_memory_copy_system_and_global.c test_memory_assign_agent.c)

## Test list.
set (TEST_LIST memory_allocated_vector_copy_heap memory_allocated_vector_copy_stack memory_allocate_max_size memory_allocate_zero_size memory_assign_agent memory_basic_allocate_free memory_basic_register_deregister memory_coherence_after_register memory_concurrent_allocate memory_concurrent_deregister memory_concurrent_free memory_concurrent_register memory_copy_allocated_to_allocated memory_copy_allocated_to_registered memory_copy_registered_to_allocated memory_copy_registered_to_registered memory_copy_system_and_global memory_group_dynamic_allocation memory_minimum_region memory_region_concurrent_get_info memory_region_alignment memory_register_subrange memory_vector_copy_between_stack_and_heap memory_vector_copy_heap_not_registered memory_vector_copy_heap_registered memory_vector_copy_stack_not_registered memory_vector_copy_stack_registered) 

include (build)
include (test)
