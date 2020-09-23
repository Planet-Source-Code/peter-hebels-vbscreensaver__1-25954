VERSION 5.00
Begin VB.Form Form3 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Options"
   ClientHeight    =   3075
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4575
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3075
   ScaleWidth      =   4575
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Info"
      Height          =   375
      Left            =   3120
      TabIndex        =   8
      Top             =   2640
      Width           =   1455
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Show FPS"
      Height          =   255
      Left            =   1080
      TabIndex        =   7
      Top             =   1680
      Width           =   2415
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   960
      MaxLength       =   8
      TabIndex        =   5
      Text            =   "Bloxx"
      Top             =   1320
      Width           =   3495
   End
   Begin VB.Frame Frame1 
      Caption         =   "Password (leave blank for no password)"
      Height          =   1215
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   4575
      Begin VB.TextBox Text1 
         Height          =   375
         IMEMode         =   3  'DISABLE
         Left            =   120
         PasswordChar    =   "*"
         TabIndex        =   3
         Top             =   480
         Width           =   4335
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "cancel"
      Height          =   375
      Left            =   1560
      TabIndex        =   1
      Top             =   2640
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ok"
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   2640
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Scrolling text:"
      Height          =   255
      Left            =   0
      TabIndex        =   6
      Top             =   1320
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Note: This program will only work under an resolution of 1024x768"
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   2040
      Width           =   4455
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PassW As String
Dim PassCheck As Boolean

Private Sub Command1_Click()
If Text1.Text = "" Then PassCheck = False
PassW = Text1.Text
Form1.Label1.Caption = Text2.Text
Form1.Label2.Caption = Text2.Text
Form1.Show
Form1.Label1.Caption = Text2.Text
Form1.Label2.Caption = Text2.Text

End Sub

Private Sub Command3_Click()
Form4.Show
End Sub
