set(NAME clang_tidy_bug)

set(SOURCES
    main.cpp
)

add_executable(${NAME} ${SOURCES})

set_target_properties(${NAME} PROPERTIES LINK_FLAGS " -specs=nano.specs -specs=nosys.specs")


