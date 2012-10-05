/*
 * Copyright 2012 Ettus Research LLC
 * 
 * This file is part of GR Extras
 * 
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

////////////////////////////////////////////////////////////////////////
// block headers
////////////////////////////////////////////////////////////////////////
%{
#include <gnuradio/extras/tx_pacer.h>
%}

%include <gnuradio/extras/tx_pacer.h>

////////////////////////////////////////////////////////////////////////
// block magic
////////////////////////////////////////////////////////////////////////
using namespace gnuradio::extras;
GR_EXTRAS_SWIG_BLOCK_FACTORY(tx_pacer)