//
//  CocoaTentEssay.m
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

#import "CocoaTentEssay.h"

@implementation CocoaTentEssay

- (id) init
{
    self = [super init];
    
    if (!self)
        return self;
    
    self.type = kCocoaTentEssayType;
    
    return self;
}

- (id) initWithDictionary:(NSDictionary *)dictionary
{
    self = [super initWithDictionary:dictionary];
    
    if (!self)
        return self;
    
    if ([[dictionary objectForKey:@"content"] objectForKey:@"title"])
        self.title = [dictionary valueForKeyPath:@"content.title"];
    
    if ([[dictionary objectForKey:@"content"] objectForKey:@"excerpt"])
        self.excerpt = [dictionary valueForKeyPath:@"content.excerpt"];
    
    if ([[dictionary objectForKey:@"content"] objectForKey:@"body"])
        self.body = [dictionary valueForKeyPath:@"content.body"];
    
    if ([[dictionary objectForKey:@"content"] objectForKey:@"tags"])
        self.tags = [dictionary valueForKeyPath:@"content.tags"];
    
    return self;
}

- (NSMutableDictionary *)dictionary
{
    NSDictionary *content = [NSDictionary dictionary];
    
    if (self.title)
        [content setValue:self.title forKey:@"title"];
    
    if (self.excerpt)
        [content setValue:self.excerpt forKey:@"excert"];
    
    if (self.body)
        [content setValue:self.body forKey:@"body"];
    
    if (self.tags)
        [content setValue:self.tags forKey:@"tags"];
                             
    
    NSMutableDictionary *dictionaryOfPropertyValues = [super dictionary];
    
    [dictionaryOfPropertyValues setValue:content forKey:@"content"];
    
    return dictionaryOfPropertyValues;
}

@end
