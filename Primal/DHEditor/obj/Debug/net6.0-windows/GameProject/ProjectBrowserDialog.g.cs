﻿#pragma checksum "..\..\..\..\GameProject\ProjectBrowserDialog.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "7B2F98E27B0E09FE83FE9F0E09402CF2C470823E"
//------------------------------------------------------------------------------
// <auto-generated>
//     이 코드는 도구를 사용하여 생성되었습니다.
//     런타임 버전:4.0.30319.42000
//
//     파일 내용을 변경하면 잘못된 동작이 발생할 수 있으며, 코드를 다시 생성하면
//     이러한 변경 내용이 손실됩니다.
// </auto-generated>
//------------------------------------------------------------------------------

using DHEditor.GameProject;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
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


namespace DHEditor.GameProject {
    
    
    /// <summary>
    /// ProjectBrowserDialog
    /// </summary>
    public partial class ProjectBrowserDialog : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 17 "..\..\..\..\GameProject\ProjectBrowserDialog.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Primitives.ToggleButton openProjectButton;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\..\..\GameProject\ProjectBrowserDialog.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Primitives.ToggleButton createProjectButton;
        
        #line default
        #line hidden
        
        
        #line 22 "..\..\..\..\GameProject\ProjectBrowserDialog.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel browserContent;
        
        #line default
        #line hidden
        
        
        #line 23 "..\..\..\..\GameProject\ProjectBrowserDialog.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DHEditor.GameProject.OpenProjectView openProjectView;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\..\..\GameProject\ProjectBrowserDialog.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DHEditor.GameProject.NewProjectView newProjectView;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.13.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/DHEditor;component/gameproject/projectbrowserdialog.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\GameProject\ProjectBrowserDialog.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.13.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.openProjectButton = ((System.Windows.Controls.Primitives.ToggleButton)(target));
            
            #line 18 "..\..\..\..\GameProject\ProjectBrowserDialog.xaml"
            this.openProjectButton.Click += new System.Windows.RoutedEventHandler(this.OnToggleButton_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.createProjectButton = ((System.Windows.Controls.Primitives.ToggleButton)(target));
            
            #line 20 "..\..\..\..\GameProject\ProjectBrowserDialog.xaml"
            this.createProjectButton.Click += new System.Windows.RoutedEventHandler(this.OnToggleButton_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.browserContent = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 4:
            this.openProjectView = ((DHEditor.GameProject.OpenProjectView)(target));
            return;
            case 5:
            this.newProjectView = ((DHEditor.GameProject.NewProjectView)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

