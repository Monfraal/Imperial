
add_definitions(-DWITH_SHADOW_WIN)
add_library(freerdp-shadow-subsystem-impl STATIC
	win_dxgi.c
	win_dxgi.h
	win_rdp.c
	win_rdp.h
	win_shadow.c
	win_shadow.h
	win_wds.c
	win_wds.h
)
target_link_libraries(freerdp-shadow-subsystem-impl PRIVATE
	freerdp-client
	freerdp
	winpr
)
