/*
 * Copyright 2006,2007 Free Software Foundation, Inc.
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




#ifndef INCLUDED_FSK4_GENERIC_F_H
#define INCLUDED_FSK4_GENERIC_F_H

#include <gnuradio/block.h>
#include <gnuradio/msg_queue.h>







class fsk4_generic_f;

/*
 * We use boost::shared_ptr's instead of raw pointers for all access
 * to gr_blocks (and many other data structures).  The shared_ptr gets
 * us transparent reference counting, which greatly simplifies storage
 * management issues.  This is especially helpful in our hybrid
 * C++ / Python system.
 *
 * See http://www.boost.org/libs/smart_ptr/smart_ptr.htm
 *
 * As a convention, the _sptr suffix indicates a boost::shared_ptr
 */
typedef boost::shared_ptr<fsk4_generic_f> fsk4_generic_f_sptr;


fsk4_generic_f_sptr fsk4_make_generic_f (gr::msg_queue::sptr queue, int processing_flags);



class fsk4_generic_f : public gr::block
{
private:
  // The friend declaration allows fsk4_make_square_ff to
  // access the private constructor.

  friend fsk4_generic_f_sptr fsk4_make_generic_f (gr::msg_queue::sptr queue, int processing_flags);

  fsk4_generic_f (gr::msg_queue::sptr queue, int processing_flags);  	// private constructor


  gr::msg_queue::sptr d_queue;		 


  int sym_counter;

  bool reverse_polarity;

 public:
  ~fsk4_generic_f ();	// public destructor


  void forecast(int noutput_items, gr_vector_int &inputs_required);


  // Where all the action really happens

  int general_work (int noutput_items,
		    gr_vector_int &ninput_items,
		    gr_vector_const_void_star &input_items,
		    gr_vector_void_star &output_items);


};





#endif /* INCLUDED_FSK4_GENERIC_F_H */

