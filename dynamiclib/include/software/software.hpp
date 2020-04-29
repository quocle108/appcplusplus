#ifndef SOFTWARE_HPP_INCLUDED
#define SOFTWARE_HPP_INCLUDED

// define SOFTWARE_DLL when building libsoftware.dll
# if defined(_WIN32) && !defined(__GNUC__)
#  ifdef SOFTWARE_DLL
#   define SOFTWARE_DECL _  _declspec(dllexport)
#  else
#   define SOFTWARE_DECL _  _declspec(dllimport)
#  endif 
# endif // WIN32

#ifndef SOFTWARE_DECL
# define SOFTWARE_DECL
#endif

#ifdef __MWERKS__
# pragma export on
#endif

SOFTWARE_DECL void software(); 
#ifdef __MWERKS__
# pragma export off
#endif

#endif // SOFTWARE_HPP_INCLUDED