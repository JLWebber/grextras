/*
 * Copyright 2012 Free Software Foundation, Inc.
 * 
 * This file is part of GNU Radio
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

%include <pmt_swig.i>
%include <gruel_common.i>

%{

#include <gruel/pmt_blob.h>
#include <gruel/pmt_mgr.h>

namespace pmt{
    pmt_t pmt_mgr_acquire_safe(boost::shared_ptr<pmt_mgr> mgr, bool block){
        pmt_t p;
        GR_PYTHON_BLOCKING_CODE(
            p = mgr->acquire(block);
        )
        return p;
    }
}

%}

%include <gruel/pmt_blob.h>
%include <gruel/pmt_mgr.h>

namespace pmt{
    pmt_t pmt_mgr_acquire_safe(boost::shared_ptr<pmt_mgr> mgr, bool block);
}

using namespace pmt;
GR_EXTRAS_SWIG_BLOCK_MAGIC1(pmt_mgr)