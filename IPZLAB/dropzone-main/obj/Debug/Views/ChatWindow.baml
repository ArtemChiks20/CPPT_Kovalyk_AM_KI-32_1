   M S B A M L   `   `   `  ����C  ?DropZone, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:DropZone.Views.ControlsDropZone.Views.Controls  5      9!clr-namespace:DropZone.ConvertersDropZone.Converters  5      /clr-namespace:DropZone.ViewsDropZone.Views  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5
      9!clr-namespace:DropZone.ViewModelsDropZone.ViewModels  5          DropZone.Views.ChatWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      :controls%clr-namespace:DropZone.Views.Controls     5      8
converters!clr-namespace:DropZone.Converters     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:DropZone.Views     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5	      9system&clr-namespace:System;assembly=mscorlib     5
      8
viewModels!clr-namespace:DropZone.ViewModels     5      $	��350��5      $	��450��5        � WindowStartupLocation$  CenterOwner=�5       � Title 5      �� *Title+ � 	Resources 5      >  8DropZone.Converters.IsLeftToHorizontalAlignmentConverter (  $IsLeftToHorizontalAlignmentConverter.  (DropZone.Converters.BoolToBrushConverter  BoolToBrushConverter1  +DropZone.Converters.IsLeftToMarginConverter  IsLeftToMarginConverter��%W   &	        &	      &	 &       5   
   6:     5   
   6*     5   
   6-   5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��5 �6   �� 5      $
��Auto �6   .+�5   
   �� -   5         ��Name$ scrollViewer��5      $
��Auto=�6-   .��5      �� $��5q�6   ��6&   �� *	Bubbles+��5       �� 5!      .R�5"      ��  �� Orientation$ Vertical=�6%   5#      ��5%      �� 5&       �� DataType)   #DropZone.ViewModels.BubbleViewModel"  6#   .R�5'      � $��5q�6   ��6*   �� *IsLeft+ �� 	Converter# [  .+�5(      0   *DropZone.Views.Controls.ConversationBubble  ��5)   !   �� *IsLeft+# [  �� ConverterParameter$	 100��	   BubbleColor	 5*   !   �� *IsLeft+# [ $ #e4e6eb,#1479fb��
   Text
 5+   !   �� *Text+   Attachments 5,   !   �� *Attachments+5-      5.      50      51      �� 52   
   $��1��53      $��Stretch=�54      
������ 55      � 56   
   $��2��6   $��5q�6    � ColumnDefinitions 57      �� 58      $��* �6#   �� 59      $
��Auto �6#   .+�5;      �� -   5         ��Name$ txtInput��5<       �� AcceptsReturn .  �� TextWrapping$
 Wrap=�5?      " �� VerticalScrollBarVisibility$
 Auto=�5@      �� 5A      -   5        $��1��5C      $��4,0,0,0q�5D      ��5E      Z� ��5F      Z� .��5G      �� $��16��5H      $��16��5I      $��/Images/attach.png��5J      5K      5L      5M      5N      