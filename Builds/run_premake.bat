@echo off

@rem ----------------------------------------------------------------------------
@rem
@rem  K-Meter
@rem  =======
@rem  Implementation of a K-System meter according to Bob Katz' specifications
@rem
@rem  Copyright (c) 2010-2016 Martin Zuther (http://www.mzuther.de/)
@rem
@rem  This program is free software: you can redistribute it and/or modify
@rem  it under the terms of the GNU General Public License as published by
@rem  the Free Software Foundation, either version 3 of the License, or
@rem  (at your option) any later version.
@rem
@rem  This program is distributed in the hope that it will be useful,
@rem  but WITHOUT ANY WARRANTY; without even the implied warranty of
@rem  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
@rem  GNU General Public License for more details.
@rem
@rem  You should have received a copy of the GNU General Public License
@rem  along with this program.  If not, see <http://www.gnu.org/licenses/>.
@rem
@rem  Thank you for using free software!
@rem
@rem ----------------------------------------------------------------------------

@set visual_toolkit="Windows7.1SDK"
@rem set python_path="%PROGRAMFILES%\Python35"


@echo.
@premake5 --os=windows vs2013

@echo.
@premake5 --os=windows vs2015

@rem "%python_path%\python.exe" visual_studio_fix.py "%visual_toolkit%"

@echo.
@premake5 --cc=gcc --os=linux gmake

@echo.
@pause
