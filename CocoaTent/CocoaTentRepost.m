//
//  CocoaTentRepost.m
//  TentClient
//
//  Created by Dustin Rue on 10/2/12.
//  Copyright (c) 2012 Dustin Rue. All rights reserved.
//

/*
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#import "CocoaTentRepost.h"

@implementation CocoaTentRepost

- (id) init
{
    self = [super init];
    
    if (!self)
        return self;
    
    self.type = @"https://tent.io/types/post/repost/v0.1.0";
    
    return self;
}

- (NSMutableDictionary *)dictionary
{
    NSMutableDictionary *content = [NSMutableDictionary dictionary];
    
    if (self.entity)
        [content setValue:self.entity forKey:@"entity"];
    
    if (self.post_id)
        [content setValue:self.post_id forKey:@"id"];
    
    
    
    NSMutableDictionary *dictionaryOfPropertyValues = [super dictionary];
    
    [dictionaryOfPropertyValues setValue:content forKey:@"content"];
    
    return dictionaryOfPropertyValues;
}

@end
