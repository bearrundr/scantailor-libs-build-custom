function (list_items_prepend List Prefix)
  set(${List}_temp)
  foreach (_item ${${List}})
    list(APPEND ${List}_temp "${Prefix}${_item}")
  endforeach()
  set(${List} "${${List}_temp}" PARENT_SCOPE)
endfunction()