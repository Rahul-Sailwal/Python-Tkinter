# -*- coding: utf-8 -*-
"""
Created on Sat May 16 22:28:18 2020
@author: rahul.sailwal

this is a basic login form

user - you can put anything - not validated 
password - admin

"""

from PIL import Image
from PIL import ImageTk
from tkinter import *
from tkinter.messagebox import *

#----------------------------------functions--------------------------------

def Showpassword():
    #this function is to show * character or vice versa
    if cval.get()==1:
        txtpass.configure(show="")
    else:
        txtpass.configure(show="*")

def center_window(w=325, h=175):
    # this function is to set screen at centre position
    ws = login.winfo_screenwidth()
    hs = login.winfo_screenheight()
    # calculate position x, y
    x = (ws/2) - (w/2)    
    y = (hs/2) - (h/2)
    login.geometry('%dx%d+%d+%d' % (w, h, x, y))
    
def validate():
    #this function is used to validate credentials 
    if txtUser.get()=="":
        messagebox.showerror(title="Validation failed",message="Please enter username")
        exit()
    elif txtpass.get()=="":
        messagebox.showerror(title="validation failed",message="Please enter password")
    else:
        if txtpass.get()=="admin":
            #successful login
            messagebox.showinfo(title="Welcome",message="Welcome to application. \nThis page will be close automatically")
            login.destroy()
    
#---------------------initialising screen and form code--------------------
    
login=Tk()
login.title("Login")
#to disable minimize button
login.resizable(0,0)
center_window(325,205)

cval=IntVar()

#-----------------------------------controls-------------------------------
#img=PhotoImage(file=r"C:\Data\Python\Practice\GUI_Program\Misc\loginpage.png")


#canvas=Canvas(login,width=20,bg="blue")
#canvas.place(x=0,y=0)
#canvas.create_image(50,10,image=img,anchor=NW)
#labels initialising

lblName=Label(login,text="Username",font=("Calibre",10,"bold"))
lblName.place(x=40,y=30)
lblpass=Label(login,text="Password",font=("Calibre",10,"bold"))
lblpass.place(x=40,y=80)

#text boxes
txtUser=Entry(login,font=("Calibre",10,"bold"),justify=RIGHT)
txtUser.place(x=130,y=35)
txtpass=Entry(login,font=("Calibre",10,"bold"),show="*",justify=RIGHT)
txtpass.place(x=130,y=85)

#check box to show password
c=Checkbutton(login,text="Show password",command=Showpassword,variable=cval)
c.place(x=125,y=115)


#button initialising
loginbtn=Button(login,text="Login",width=10,command=validate)
loginbtn.place(x=195,y=150)


#messagebox.showinfo(message="hi")
login.mainloop()

