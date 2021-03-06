#pragma checksum "..\..\YuqlamaFaktura.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "3CAB4EF48747C7762A9EEE083B335F81139361BA6433B5A974F47EDC1CEF5F73"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
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
    /// YuqlamaFaktura
    /// </summary>
    public partial class YuqlamaFaktura : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 19 "..\..\YuqlamaFaktura.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtSearch;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\YuqlamaFaktura.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid Basket;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\YuqlamaFaktura.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ScrollViewer scrollViewer;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\YuqlamaFaktura.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dataGridBasket;
        
        #line default
        #line hidden
        
        
        #line 104 "..\..\YuqlamaFaktura.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel TbProduct;
        
        #line default
        #line hidden
        
        
        #line 106 "..\..\YuqlamaFaktura.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dataGridProduct;
        
        #line default
        #line hidden
        
        
        #line 180 "..\..\YuqlamaFaktura.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnSubmit;
        
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
            System.Uri resourceLocater = new System.Uri("/SotuvPlatformasi;component/yuqlamafaktura.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\YuqlamaFaktura.xaml"
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
            
            #line 10 "..\..\YuqlamaFaktura.xaml"
            ((SotuvPlatformasi.YuqlamaFaktura)(target)).KeyUp += new System.Windows.Input.KeyEventHandler(this.UserControl_KeyUp);
            
            #line default
            #line hidden
            return;
            case 2:
            this.txtSearch = ((System.Windows.Controls.TextBox)(target));
            
            #line 19 "..\..\YuqlamaFaktura.xaml"
            this.txtSearch.KeyUp += new System.Windows.Input.KeyEventHandler(this.txtSearch_KeyUp);
            
            #line default
            #line hidden
            
            #line 19 "..\..\YuqlamaFaktura.xaml"
            this.txtSearch.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.txtSearch_TextChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.Basket = ((System.Windows.Controls.Grid)(target));
            return;
            case 4:
            this.scrollViewer = ((System.Windows.Controls.ScrollViewer)(target));
            return;
            case 5:
            this.dataGridBasket = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 6:
            this.TbProduct = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 7:
            this.dataGridProduct = ((System.Windows.Controls.DataGrid)(target));
            
            #line 107 "..\..\YuqlamaFaktura.xaml"
            this.dataGridProduct.PreviewKeyDown += new System.Windows.Input.KeyEventHandler(this.dataGridProduct_PreviewKeyDown);
            
            #line default
            #line hidden
            return;
            case 8:
            this.btnSubmit = ((System.Windows.Controls.Button)(target));
            
            #line 180 "..\..\YuqlamaFaktura.xaml"
            this.btnSubmit.Click += new System.Windows.RoutedEventHandler(this.btnSubmit_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

