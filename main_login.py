from tkinter import *
import tkinter as tk
from tkinter import ttk, messagebox
from PIL import ImageTk
import PIL.Image
from tkinter import Tk, Toplevel, Button
import pymysql

def mainfunction():
      global bgg, pimg, label
def clear():
      userentry.delete(0,END)
      passentry.delete(0,END)

def close():
      win.destroy()	


def login():
      if user_name.get()=="" or password.get()=="":
            messagebox.showerror("Error","Enter username and password",parent=win)	
      else:
            try:
                  con = pymysql.connect(host="localhost",user="root",password="",database="criminaldb")
                  cur = con.cursor()

                  cur.execute("select * from user_information where username=%s and password = %s",(user_name.get(),password.get()))
                  row = cur.fetchone()

                  if row==None:
                        messagebox.showerror("Error" , "Invalid User Name And Password", parent = win)

                  else:
                        messagebox.showinfo("Success" , "Successfully Login" , parent = win)
                        close()
                        

                  con.close()
            except Exception as es:
                  messagebox.showerror("Error" , f"Error Dui to : {str(es)}", parent = win)
def signup():
      # signup database connect 
      def action():
            if first_name.get()=="" or last_name.get()=="" or user_name.get()=="" or password.get()=="" or very_pass.get()=="":
                  messagebox.showerror("Error" , "All Fields Are Required" , parent = winsignup)
            elif password.get() != very_pass.get():
                  messagebox.showerror("Error" , "Password & Confirm Password Should Be Same" , parent = winsignup)
            else:
                  try:
                        con = pymysql.connect(host="localhost",user="root",password="",database="criminaldb")
                        cur = con.cursor()
                        cur.execute("select * from user_information where username=%s",user_name.get())
                        row = cur.fetchone()
                        if row!=None:
                              messagebox.showerror("Error" , "User Name Already Exits", parent = winsignup)
                        else:
                              cur.execute("insert into user_information(first_name,last_name,gender,username,password) values(%s,%s,%s,%s,%s)",
                                    (
                                    first_name.get(),
                                    last_name.get(),
                                    var.get(),
                                    user_name.get(),
                                    password.get()
                                    ))
                              con.commit()
                              con.close()
                              messagebox.showinfo("Success" , "Ragistration Successfull" , parent = winsignup)
                              clear()
                              switch()
                        
                  except Exception as es:
                        messagebox.showerror("Error" , f"Error Dui to : {str(es)}", parent = winsignup)