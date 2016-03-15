//
//  main.m
//  LinearSearch
//
//  Created by Thomas Friesman on 2016-03-08.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import <Foundation/Foundation.h>

int binarySearch(NSArray *array, int target, int minIndex, int maxIndex) {
    if (maxIndex < minIndex) {
        return -1;
    } else {
        int midIndex = ((maxIndex - minIndex) / 2) + minIndex;
        if ([array[midIndex] intValue] > target) {
            return binarySearch(array, target, minIndex, maxIndex -1);
        } else if ([array[midIndex] intValue] < target) {
            return binarySearch(array, target, midIndex + 1, maxIndex);
        } else {
            return midIndex;
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[@1, @5, @7, @9, @10, @13, @15];
        
        int min = 0;
        int max = (int)[array count] - 1;
        int target = 11;
        
        NSLog(@"%i", binarySearch(array, target, min, max));
       
    }

    return 0;
}