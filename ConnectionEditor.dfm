object FrmConnectionEditor: TFrmConnectionEditor
  Left = 0
  Top = 0
  Caption = 'FrmConnectionEditor'
  ClientHeight = 486
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
    Top = 64
    Width = 382
    Caption = 'Server'
    TabOrder = 0
  end
  object rzGrpBx2: TRzGroupBox
    Left = 8
    Top = 175
    Width = 382
    Height = 250
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
      Width = 361
      Height = 89
      TabOrder = 0
    end
    object edtUser: TEdit
      Left = 68
      Top = 26
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtPassword: TEdit
      Left = 68
      Top = 52
      Width = 121
      Height = 21
      TabOrder = 2
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
  end
end
