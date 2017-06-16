/* -*- c++ -*- */

%feature("autodoc", "1");		// generate python docstrings

%include "exception.i"
%import "gnuradio/swig/gnuradio.i"			// the common stuff

%{
#include "gnuradio/swig/gnuradio_swig_bug_workaround.h"	// mandatory bug fix
#include "gnuradio/sync_block.h"
#include "gnuradio/sync_interpolator.h"
#include "gnuradio/sync_decimator.h"
#include "gnuradio/block_gateway.h"
#include "gnuradio/tagged_stream_block.h"
#include "fsk4_demod_ff.h"
#include "fsk4_rdlap_f.h"
#include "fsk4_generic_f.h"
#include "fsk4_apco25_f.h"
#include <stdexcept>
%}

// ----------------------------------------------------------------

/*
 * First arg is the package prefix.
 * Second arg is the name of the class minus the prefix.
 *
 * This does some behind-the-scenes magic so we can
 * access fsk4_square_ff from python as fsk4.square_ff
 */
GR_SWIG_BLOCK_MAGIC(fsk4,demod_ff);

fsk4_demod_ff_sptr fsk4_make_demod_ff (gr::msg_queue::sptr queue, float sample_rate, float symbol_rate);

class fsk4_demod_ff : public gr::block
{
private:
  fsk4_demod_ff (gr::msg_queue::sptr queue, float sample_rate, float symbol_rate);
};


// ----------------------------------------------------------------

/*
 * First arg is the package prefix.
 * Second arg is the name of the class minus the prefix.
 *
 * This does some behind-the-scenes magic so we can
 * access fsk4_square_ff from python as fsk4.square_ff
 */

GR_SWIG_BLOCK_MAGIC(fsk4,rdlap_f);

fsk4_rdlap_f_sptr fsk4_make_rdlap_f (gr::msg_queue::sptr queue, int processing_flags);

class fsk4_rdlap_f : public gr::block
{
private:
  fsk4_rdlap_f (gr::msg_queue::sptr queue, int processing_flags);
};


// ----------------------------------------------------------------

/*
 * First arg is the package prefix.
 * Second arg is the name of the class minus the prefix.
 *
 * This does some behind-the-scenes magic so we can
 * access fsk4_square_ff from python as fsk4.square_ff
 */

GR_SWIG_BLOCK_MAGIC(fsk4,generic_f);

fsk4_generic_f_sptr fsk4_make_generic_f (gr::msg_queue::sptr queue, int processing_flags);

class fsk4_generic_f : public gr::block
{
private:
  fsk4_generic_f (gr::msg_queue::sptr queue, int processing_flags);
};



// ----------------------------------------------------------------

/*
 * First arg is the package prefix.
 * Second arg is the name of the class minus the prefix.
 *
 * This does some behind-the-scenes magic so we can
 * access fsk4_square_ff from python as fsk4.square_ff
 */

GR_SWIG_BLOCK_MAGIC(fsk4,apco25_f);

fsk4_apco25_f_sptr fsk4_make_apco25_f (gr::msg_queue::sptr queue, int processing_flags);

class fsk4_apco25_f : public gr::block
{
private:
  fsk4_apco25_f (gr::msg_queue::sptr queue, int processing_flags);
};


