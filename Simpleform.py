# -*- coding: utf-8 -*-
"""
Created on Sat May 16 11:37:52 2020
@author: rahul.sailwal
"""

#import tkinter library
from tkinter import *

#initialising tkinter object
form=Tk()

#below line is to change title bar name of the window
form.title("Sample title")

#this will block minimize button, 
#root.resizable(height = None, width = None) -
# you can use false or 0 to pass argument to disable maximize button
form.resizable(False,False)


#below code is to define width and height of form
#we have to put width & height in double quotes
form.geometry("400x300")


#use configure methond to amend property of any object
#object.configure can be used for other objects, bg stands for background
form.configure(bg='gray')



#below line is a infinite loop which shows form, if we click on close, loop will stop
form.mainloop()
