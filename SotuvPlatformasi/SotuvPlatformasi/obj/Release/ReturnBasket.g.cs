﻿#pragma checksum "..\..\ReturnBasket.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "E3EE80E9990782C6CEB03DD9E921A4A7D37FBB26F626A6E2125EFE5CE89F0DCD"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using SotuvPlatformasi;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace SotuvPlatformasi {
    
    
    /// <summary>
    /// ReturnBasket
    /// </summary>
    public partial class ReturnBasket : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 59 "..\..\ReturnBasket.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnExit;
        
        #line default
        #line hidden
        
        
        #line 107 "..\..\ReturnBasket.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtProduct;
        
        #line default
        #line hidden
        
        
        #line 117 "..\..\ReturnBasket.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtZavod;
        
        #line default
        #line hidden
        
        
        #line 125 "..\..\ReturnBasket.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtUlchov;
        
        #line default
        #line hidden
        
        
        #line 134 "..\..\ReturnBasket.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtTanNarx;
        
        #line default
        #line hidden
        
        
        #line 142 "..\..\ReturnBasket.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtValUl;
        
        #line default
        #line hidden
        
        
        #line 150 "..\..\ReturnBasket.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtSotishNarx;
        
        #line default
        #line hidden
        
        
        #line 159 "..\..\ReturnBasket.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtQuantity;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/SotuvPlatformasi;component/returnbasket.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\ReturnBasket.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 12 "..\..\ReturnBasket.xaml"
            ((SotuvPlatformasi.ReturnBasket)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Window_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.btnExit = ((System.Windows.Controls.Button)(target));
            
            #line 59 "..\..\ReturnBasket.xaml"
            this.btnExit.Click += new System.Windows.RoutedEventHandler(this.btnExit_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.txtProduct = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.txtZavod = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.txtUlchov = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.txtTanNarx = ((System.Windows.Controls.TextBox)(target));
            return;
            case 7:
            this.txtValUl = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            this.txtSotishNarx = ((System.Windows.Controls.TextBox)(target));
            return;
            case 9:
            this.txtQuantity = ((System.Windows.Controls.TextBox)(target));
            
            #line 160 "..\..\ReturnBasket.xaml"
            this.txtQuantity.KeyDown += new System.Windows.Input.KeyEventHandler(this.txtQuantity_KeyDown);
            
            #line default
            #line hidden
            return;
            case 10:
            
            #line 206 "..\..\ReturnBasket.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

