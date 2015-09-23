## Target executable name.
set (TARGET hsa_finalization)

## Specify the SRC_DIR.
set (SRC_DIR "${CMAKE_SOURCE_DIR}/src/extensions/finalization")

## Included source files.
set (SOURCE_FILES test_helper_func.c test_finalization_concurrent_finalization.c test_finalization_dependent_modules.c test_finalization_incompatible_module.c test_finalization_invalid_module.c test_finalization_module_already_included.c test_finalization_module_count.c test_finalization_multiple_modules.c test_finalization_out_of_resources.c test_finalization_control_directives_max_dynamic_group_size.c hsa_finalization.c test_finalization_control_directives_max_flat_grid_size.c test_finalization_control_directives_max_flat_workgroup_size.c  test_finalization_control_directives_required_grid_size.c  test_finalization_control_directives_required_workgroup_size.c test_finalization_control_directives_required_dim.c) 

## Disable control directive tests and invalid module test
## set (TEST_LIST finalization_concurrent_finalization finalization_dependent_modules finalization_incompatible_module finalization_invalid_module finalization_module_already_included finalization_module_count finalization_multiple_modules finalization_control_directives_max_dynamic_group_size finalization_control_directives_max_flat_grid_size finalization_control_directives_max_flat_workgroup_size finalization_control_directives_required_grid_size finalization_control_directives_required_workgroup_size finalization_control_directives_required_dim) 

## Test list.
set (TEST_LIST finalization_concurrent_finalization finalization_dependent_modules finalization_incompatible_module finalization_module_already_included finalization_module_count finalization_multiple_modules) 

include (build)
include (test)
