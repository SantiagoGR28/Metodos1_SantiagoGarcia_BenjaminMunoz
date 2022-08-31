#!/usr/bin/env python
# coding: utf-8

# In[5]:


import numpy as np
import matplotlib.axes as ax
import matplotlib.pyplot as plt


# In[44]:


R=2

x=np.linspace(-4,4,25)
y=np.linspace(-4,4,25)

V=2

X,Y=np.meshgrid(x,y)

def funcion_flujo(V,x,y,R):
    try:
            resultado=V*x*((1-(R**2))/((x**2)+(y**2)))
    except ZeroDivisionError:
            print("Division por 0")
    return resultado

f=lambda V,x,y,R:funcion_flujo(V,x,y,R)


def derivada_parcial_x(f,x,y,h):
    derivada=(f(V,x+h,y,R)-f(V,x-h,y,R))/(2*h)
    return derivada

def derivada_parcial_y(f,x,y,h):
    derivada=(f(V,x,y+h,R)-f(V,x,y-h,R))/(2*h)
    return derivada

h=0.001
vx=derivada_parcial_x(f,X,Y,h)
vy=-1*derivada_parcial_y(f,X,Y,h)

fig1 = plt.figure(figsize=(5,5))
ax = fig1.add_subplot(1,1,1)
for i in range(len(x)):
    for j in range(len(y)):
        ax.quiver(x[i],y[j],vx[i,j],vy[i,j])
        
          


# In[ ]:




