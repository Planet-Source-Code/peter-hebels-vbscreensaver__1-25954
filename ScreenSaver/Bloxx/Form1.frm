VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   11520
   ClientLeft      =   0
   ClientTop       =   -105
   ClientWidth     =   15360
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11520
   ScaleWidth      =   15360
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Height          =   9975
      Left            =   0
      ScaleHeight     =   9975
      ScaleWidth      =   15375
      TabIndex        =   0
      Top             =   720
      Width           =   15375
      Begin VB.Label Labelfps 
         BackStyle       =   0  'Transparent
         Caption         =   "Made by Peter hebels"
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Visible         =   0   'False
         Width           =   975
      End
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Bloxx"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   12000
      TabIndex        =   3
      Top             =   11040
      Width           =   3735
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Bloxx"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   495
      Left            =   0
      TabIndex        =   2
      Top             =   120
      Width           =   3135
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'**********************************************************************************************************
'ScreenSaver project with 3d effects, by Peter Hebels Website "www.grworld.com/megagsite/peterspagina.html*
'Iam not responsible for any damages may caused by this project                                           *
'**********************************************************************************************************

Dim Count1 As Integer
Dim Lastsec As Long
Dim PassCheck As Boolean

Private Sub Form_Load()
Dim K, B, G, H
Show
fmat.CTRL_ALT_DEL_Disabled

Form1.Label1.Caption = Form3.Text2.Text
Form1.Label2.Caption = Form3.Text2.Text
If Form3.Check1.Value = 1 Then Labelfps.Visible = True
Count1 = 0
Do
DoEvents
Randomize
If H = 100000 Then H = 0

If K >= 16500 Then K = 0
If B >= 3300 Then B = 0
If G >= 9100 Then G = 0

If Label1.Left = 15360 Then Label1.Left = -200
If Label2.Left = -200 Then Label2.Left = 15360
Label1.Left = Label1.Left + 1
Label2.Left = Label2.Left - 1

K = K + 1
B = B + 1
G = G + 1
H = H + 1

Picture1.Line (G, B)-Step(G, K), H, BF

Count1 = Count1 + 1
If Second(Time) = 0 Then Lastsec = 0
If Second(Time) > Lastsec Then
    Lastsec = Second(Time)
    Labelfps = "FPS=" & Count1
    Count1 = 0


End If
Loop
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If X <= 100 Then GoTo EDME
If Y <= 100 Then GoTo EDME
Exit Sub

EDME:
If Form3.Text1.Text = "" Then
fmat.CTRL_ALT_DEL_Enabled
End
Else
Form2.Show
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
fmat.CTRL_ALT_DEL_Enabled
Unload Form1
Unload Form2
Unload Form3
End
End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If X <= 100 Then GoTo EDME
If Y <= 100 Then GoTo EDME
Exit Sub

EDME:
If Form3.Text1.Text = "" Then
fmat.CTRL_ALT_DEL_Enabled
End
Else
Form2.Show
End If
End Sub
