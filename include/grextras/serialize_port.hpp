// Copyright (C) by Josh Blum. See LICENSE.txt for licensing information.

#ifndef INCLUDED_GREXTRAS_SERIALIZE_PORT_HPP
#define INCLUDED_GREXTRAS_SERIALIZE_PORT_HPP

#include <grextras/config.hpp>
#include <gras/block.hpp>
#include <string>

namespace grextras
{

/*!
 * The serialize port block:
 * This block serializes the input stream, messags, and tags;
 * and outputs the serialized data as a PacketMsg message type.
 * The packet message can be sent over a network
 * or possibly -> datagram to stream -> file sink.
 */
struct GREXTRAS_API SerializePort : virtual gras::Block
{
    typedef boost::shared_ptr<SerializePort> sptr;

    /*!
     * Create a new serialize port block.
     * An MTU of zero means unconstrained output payload sizes.
     * \param mtu max output payload size
     */
    static sptr make(const size_t mtu = 0);
};

}


#endif /*INCLUDED_GREXTRAS_SERIALIZE_PORT_HPP*/
