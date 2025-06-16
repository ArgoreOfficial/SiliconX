#pragma once

#include <stdint.h>

#include <thread>

namespace six {
namespace Thread {

/**
 * @brief Suspend this thread for the given duration of nanoseconds
 * 
 * @param _nanoseconds the amount of nanoseconds to sleep
 */
extern void sleepFor( uint64_t _nanoseconds );

/**
 * @brief Yield this thread
 * 
 */
extern void yield();

/**
 * @brief Suspend this thread for the given duration of seconds
 * 
 * @param _seconds the amount of seconds to sleep
 */
inline void sleepForSeconds( double _seconds ) {
	six::Thread::sleepFor( static_cast<uint64_t>( _seconds * 1000000000LL ) );
}

}
}
