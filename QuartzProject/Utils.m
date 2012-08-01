//
//  Utils.m
//  uicolor
//
//  Created by Nicholas Tau on 8/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Utils.h"
#include <mach/mach.h>

@implementation Utils


BOOL memoryInfo(vm_statistics_data_t *vmStats) {
    mach_msg_type_number_t infoCount = HOST_VM_INFO_COUNT;
    kern_return_t kernReturn = host_statistics(mach_host_self(), HOST_VM_INFO, (host_info_t)vmStats, &infoCount);
    
    return kernReturn == KERN_SUCCESS;
}

void logMemoryInfo() {
    vm_statistics_data_t vmStats;
    
    if (memoryInfo(&vmStats)) {
        NSLog(@"free: %u\nactive: %u\ninactive: %u\nwire: %u\nzero fill: %u\nreactivations: %u\npageins: %u\npageouts: %u\nfaults: %u\ncow_faults: %u\nlookups: %u\nhits: %u",
              vmStats.free_count * vm_page_size,
              vmStats.active_count * vm_page_size,
              vmStats.inactive_count * vm_page_size,
              vmStats.wire_count * vm_page_size,
              vmStats.zero_fill_count * vm_page_size,
              vmStats.reactivations * vm_page_size,
              vmStats.pageins * vm_page_size,
              vmStats.pageouts * vm_page_size,
              vmStats.faults,
              vmStats.cow_faults,
              vmStats.lookups,
              vmStats.hits
              );
    }
}

+(void)printMemoryInfo
{
    logMemoryInfo();
}

@end
