Hibernate Tools Plug
===============
For hibernate 4

What is it
----------

Hibernate Tools Plus	( Based on hibernate-tools )

1, support Chinese comment in table column, and add comment to Pojo
2, auto generate FieldNamesEnum， easy to enum Pojo filed
3, auto generate enum for char type in Pojo, 


eg 1, 
if you have comments in db table column: 
private String intro; // 介绍.
private String description; // 描述.
private String requirement; // 要求.

eg 2, 
public static enum FieldNamesEnum {
	intro, description, requirement;
}

eg 3,
you have status filed of char:
private char status; 

and you have comment on this column in db table:
ENUM(A,B,C). Status Filed，A-auto, B-below, C-close. 

and Tool Plus will auto generate enum type, 
public static enum status {
	A, B, C;
}

Licensing
---------

This software is distributed under the terms of the FSF Lesser Gnu Public
License (see lgpl.txt). This product includes software developed by the Apache
Software Foundation (http://www.apache.org/). 


Thanks
--------------------
Thanks for the original hibernate-tools team, 

