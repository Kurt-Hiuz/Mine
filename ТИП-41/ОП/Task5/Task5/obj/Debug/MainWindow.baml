   M S B A M L   `   `   `  ����@  <Task5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:Task5Task5  5   	       Task5.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:Task5     5   	   -   5          �Name$  MainWindow1��5   	    � Title$ 
MainWindow��5   	   $	��459��6   $	��622��6)    � 
ResizeMode$ NoResize=�65   .��5	      �  � ColumnDefinitions 5
   
   �� 5      .+�5   
   �� -   5         ��Name$ TextBox1��5      $
��Left=�6$   $��	10,44,0,0q�6?    �� TextWrapping$
 Wrap=�6R   $	��Top=�6f   $	��366��6~   $��18(�6�   $��38��6�    � UseLayoutRounding .  " �� VerticalScrollBarVisibility$
 Auto=�6�   �� 5   
   $
��Left=�6   $��	10,10,0,0q�6/   $
��Wrap=�6B   $b��\Введите название продукта для добавления в список��6V   $	��Top=�6�   $��22(�6�   $	��100��6�    � ContextMenu 5      �� 5      .@�5      m� -   5        $��Change color��5      65   5      5      �� 5   
   -   5        	 ��Name$	 ListBox1��5      $
��Left=�6$   $	��322��6?   $��	10,87,0,0q�6L   $	��Top=�6_   $	��366��6w   
 �� SelectionMode$
 Extended=�6�   �� 5   
   -   5         ��Name$ 	AddButton��5      $!��Добавить товар��6$   $
��Left=�6=   $��38��6X   $��
381,44,0,0q�6d   $	��Top=�6x   $	��218��6�   $��16(�6�   6�   �� 5   
   -   5        $ DeleteButton��5      $��Удалить товар��6'   $
��Left=�6?   $��38��6Z   $��381,371,0,0q�6f   $	��Top=�6{   $	��218��6�   $��16(�6�   6�   �� 5   
   -   5         ��Name$ MessageLabel��5      $
��Left=�6*   $��
381,89,0,0q�6E   $	��Top=�6Y   $��16(�6q   
���   �$	��218��6�   $
��Wrap=�6�   5      5      