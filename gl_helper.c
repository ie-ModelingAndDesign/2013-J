//
//  glHelper.c
//  2012_info2
//
//  Created by  on 12/05/07.
//  Copyright (c) 2012年 Apple. All rights reserved.
//

#include <stdio.h>
#include <math.h>
#include <OpenGL/gl.h>

void line(float x1, float y1, float x2, float y2)
{
    glBegin(GL_LINES);
    
    glVertex2f(x1, y1);
    glVertex2f(x2, y2);
    
    glEnd();
}

void circle(float x, float y, float r)
{
    glBegin(GL_LINE_LOOP);
    
    const int DIV = 20;
    for(int i=0; i<DIV; ++i)
    {
        double t = M_PI*2/DIV*i;
        glVertex2f(x+(float)cos(t)*r, y+(float)sin(t)*r);
    }
    
    glEnd();
}

void setColor(float r, float g, float b)
{
    glColor3f(r,g,b);
}