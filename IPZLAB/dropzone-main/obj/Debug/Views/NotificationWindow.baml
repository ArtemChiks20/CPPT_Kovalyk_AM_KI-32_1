   M S B A M L   `   `   `  ����C  ?DropZone, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:DropZone.ViewModelsDropZone.ViewModels  5      /clr-namespace:DropZone.ViewsDropZone.Views  5	      '    !DropZone.Views.NotificationWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Hi:http://schemas.microsoft.com/expression/2010/interactivity     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      8
viewModels!clr-namespace:DropZone.ViewModels     5      .viewsclr-namespace:DropZone.Views     5	        � Title$  Notification Popup��5
      $	��300��5       � AllowsTransparency . 
������  � SizeToContent$ Height=�5       � Topmost .  � WindowStyle$
 None=�5      .��5      �  J� RenderTransformOrigin$	 0,1&�6   .+�5   
   �� 
�������
���   �$��1q�5       �� CornerRadius$ 2��5      ._�5      � .+�5      �� -   5        $��Right=�5      $	��Top=�5       ��5!      Z� ��5"      Z� .��5$      �� $��4,0,4,0q�6    X64   5%      �� 5&      $��10q�6   .+�5'      �� $��13(�6    $
��Bold"�6.   	Drop Zone6K   �� 5(      $��0,10,0,0q�6    ��62   �� *	Message+�� 5)      $��0,5,0,0q�6!    �� Orientation$ 
Horizontal=�62   .+�5*      �� $��0,0,4,0q�6$   
Saved to6?   �� 5+      -   5         � Cursor$
 Hand��5-      $��Oblique$�5.      $
��Bold"�5/      ��50      �� *SaveLocation+	 � ToolTip	 51      �� *SaveLocation+52      53      54      55      
 � Triggers
 58   
   :� 59       :� RoutedEvent$ FrameworkElement.Loaded��6   .[�5:      �� .��5;      �� .��5<      U�  �� TargetProperty$9 3(UIElement.RenderTransform).(ScaleTransform.ScaleY)�68   .\�5=      ��  O� KeyTime$ 0:0:0��63    O� Value$ 0Q�6C   �� 5>      $ 0:0:0.5��63   $ 1Q�6E   5?      5@      5A      5B      z�5E   
   �� 5F       �� ScaleY$ 1Q�6   5H      5I      