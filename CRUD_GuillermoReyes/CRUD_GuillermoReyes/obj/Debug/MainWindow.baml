   M S B A M L   `   `   `  ����N  JCRUD_GuillermoReyes, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:CRUD_GuillermoReyesCRUD_GuillermoReyes  5   	   $    CRUD_GuillermoReyes.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:CRUD_GuillermoReyes     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��* �6   6+    � RowDefinitions 5   
   �� 5      $	��125 �6   6+   �� 5      $��* �6   6)   .+�5   
   � $��0��6   #��� ��6    5      �� 5      $	��250 �6#   61   �� 5      $��* �6#   6/   .+�5      �� -   5         ��Name$ txtId��5      $
��Left=�6%   $��	80,19,0,0q�6@    �� TextWrapping$
 Wrap=�6S   $��
��6g   $	��Top=�6y   $	��120��6�   $��17��6�   �� 5      -   5        $ txtEdad��5      $
��Left=�6'   $��	80,75,0,0q�6B   $
 Wrap=�6U   $	��Top=�6i   $	��120��6�   �� 5      $��ID��6   $
��Left=�6!   $��	44,14,0,0q�6<   $	��Top=�6O   $
��Bold"�6g   �� 5      $
��EDAD��6   $
��Left=�6#   $��	31,71,0,0q�6>   $	��Top=�6Q    J� RenderTransformOrigin$ -0.171,-0.153&�6i   $
��Bold"�6�   �� 5      $��1��6   $��NOMBRE��6$   $
��Left=�65   $��	28,14,0,0q�6P   $	��Top=�6c   $
��Bold"�6{   �� 5      $��1��6   $��CORREO��6$   $
��Left=�65   $��	28,71,0,0q�6P   $	��Top=�6c   $
��Bold"�6{   �� 5      -   5        $ 	txtNombre��5      $��1��6)   $
��Left=�69   $��	90,18,0,0q�6T   $
 Wrap=�6g   $	��Top=�6{   $	��341��6�   �� 5      $��2��6   $
��Left=�6*   $��0��6E   $��217,125,0,0q�6P   $
 Wrap=�6e   $��TextBox��6y   $	��Top=�6�   $	��120��6�   �� 5      -   5        $ 	txtCorreo��5      $��1��6)   $
��Left=�69   $��	90,75,0,0q�6T   $
 Wrap=�6g   $	��Top=�6{   $	��341��6�   5       � 5!   
   $��1��6    5"      �� 5#      $	��600 �6#   61   �� 5$      $��* �6#   6/   .+�5&      � $��1��6   #��� ��6#    5'      �� 5(      $��* �6$   61   �� 5)      $��* �6$   61   �� 5*      $��* �6$   61   .+�5,      �� -   5         ��Name$ 
btnGuardar��5,      $��Guardar��6-   $��Center=�6?   $��0,30,0,0q�6\   $	��Top=�6n   $ -0.02,-1.281&�6�   $��35��6�   $	��140��6�   #��� ��6�   $
��Bold"�6   �� 5-      -   5        $ btnNuevo��5-      $��Nuevo��6+   $��Center=�6;   $��1��6X   $	��Top=�6e   $��35��6}   $	��140��6�   $��0,30,0,0q�6�   ���	#FF64A7DA$
��Bold"�6�   {�.  6�   �� 5.      -   5        $ btnEliminar��5.      $��Eliminar��6.   $��Center=�6A   $��2��6^   $	��Top=�6k   $��35��6�   $	��140��6�   $��0,30,0,0q�6�   ���	#FFEE7562$
��Bold"�6�   �� 5/      $
��Left=�6   $��30��63   $��
132,32,0,0q�6?   $	��Top=�6S   $��30��6k   $��/guardar.png��6v   $ 0.413,-0.165&�6�   �� 50      $
��Left=�6   $��30��63   $��
132,32,0,0q�6?   $��1��6S   $	��Top=�6`   $��30��6x   $��/editar.png��6�   �� 51      $
��Left=�6   $��30��63   $��
132,30,0,0q�6?   $��2��6S   $	��Top=�6`   $��30��6x   $��/eliminar.png��6�   52      &   System.Windows.Controls.DataGrid  53      -   5          Name$ dgTabla��53      $��24,30,24,30q�6)      
IsReadOnly . 	   AutoGenerateColumns	 .  54      56      58      5:      