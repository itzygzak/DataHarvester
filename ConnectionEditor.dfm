object FrmConnectionEditor: TFrmConnectionEditor
  Left = 0
  Top = 0
  Caption = 'Connection Editor'
  ClientHeight = 598
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rzGrpBx1: TRzGroupBox
    Left = 8
    Top = 8
    Width = 382
    Height = 281
    Caption = 'Server'
    TabOrder = 0
    object rzLbl7: TRzLabel
      Left = 16
      Top = 24
      Width = 86
      Height = 13
      Caption = 'Nazwa po'#322#261'czenia'
    end
    object shp1: TShape
      Left = 296
      Top = 144
      Width = 65
      Height = 65
    end
    object rzRdGrp1: TRzRadioGroup
      Left = 8
      Top = 70
      Width = 345
      Height = 49
      Caption = 'Rodzaj po'#322#261'czenie'
      Columns = 2
      Items.Strings = (
        'Po'#322#261'czenie lokalne'
        'Po'#322#261'czenie TCP\IP')
      SpaceEvenly = True
      StartYPos = 12
      TabOrder = 0
    end
    object edtNazwaPol: TEdit
      Left = 8
      Top = 43
      Width = 233
      Height = 21
      TabOrder = 1
      TextHint = 'Wprowad'#378' nazw'#281' po'#322#261'czenia'
    end
    object edtIP: TEdit
      Left = 8
      Top = 160
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '127.0.0.1'
    end
    object edtPort: TEdit
      Left = 152
      Top = 160
      Width = 121
      Height = 21
      TabOrder = 3
      Text = '3050'
    end
    object edtSciezka: TEdit
      Left = 8
      Top = 208
      Width = 275
      Height = 21
      TabOrder = 4
      Text = 'D:\Bazy\Dziennik2021\dziennik2021.fdb'
    end
  end
  object rzGrpBx2: TRzGroupBox
    Left = 8
    Top = 304
    Width = 382
    Height = 239
    Caption = 'Parametry po'#322#261'czenia '
    TabOrder = 1
    object rzLbl1: TRzLabel
      Left = 8
      Top = 29
      Width = 54
      Height = 13
      Caption = 'U'#380'ytkownik'
    end
    object rzLbl2: TRzLabel
      Left = 8
      Top = 56
      Width = 27
      Height = 13
      Caption = 'Has'#322'o'
    end
    object rzLbl3: TRzLabel
      Left = 8
      Top = 83
      Width = 21
      Height = 13
      Caption = 'Role'
    end
    object rzLbl4: TRzLabel
      Left = 200
      Top = 29
      Width = 32
      Height = 13
      Caption = 'Strona'
    end
    object rzLbl5: TRzLabel
      Left = 200
      Top = 56
      Width = 54
      Height = 13
      Caption = 'SQL Dialekt'
    end
    object rzLbl6: TRzLabel
      Left = 8
      Top = 125
      Width = 161
      Height = 13
      Caption = 'Dodatkowe parametry po'#322#261'czenia'
    end
    object mmo1: TMemo
      Left = 8
      Top = 144
      Width = 313
      Height = 89
      TabOrder = 0
    end
    object edtUser: TEdit
      Left = 68
      Top = 25
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'SYSDBA'
      OnChange = edtUserChange
    end
    object edtPassword: TEdit
      Left = 68
      Top = 52
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'masterkey'
    end
    object edtRole: TEdit
      Left = 68
      Top = 78
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object cbbCharset: TComboBox
      Left = 264
      Top = 26
      Width = 105
      Height = 21
      TabOrder = 4
      Text = 'cbbCharset'
    end
    object cbbDialect: TComboBox
      Left = 264
      Top = 52
      Width = 105
      Height = 21
      TabOrder = 5
      Text = 'cbbDialect'
    end
    object tv1: TTreeView
      Left = 232
      Top = 104
      Width = 121
      Height = 97
      Indent = 19
      TabOrder = 6
    end
  end
  object btnConnect: TButton
    Left = 127
    Top = 549
    Width = 75
    Height = 25
    Caption = 'btnConnect'
    TabOrder = 2
    OnClick = btnConnectClick
  end
  object btn1: TButton
    Left = 35
    Top = 549
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 208
    Top = 549
    Width = 121
    Height = 25
    Caption = 'btn2'
    TabOrder = 4
    OnClick = btn2Click
  end
  object ibDtBs1: TIBDatabase
    DatabaseName = '@'
    LoginPrompt = False
    ServerType = 'IBServer'
    AfterConnect = ibDtBs1AfterConnect
    Left = 288
    Top = 24
  end
  object ibDtbsNf1: TIBDatabaseInfo
    Left = 336
    Top = 32
  end
end
