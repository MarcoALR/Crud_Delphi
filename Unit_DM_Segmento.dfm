object DM_Segmento: TDM_Segmento
  OldCreateOrder = False
  Height = 148
  Width = 786
  object Qry_Segmento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  segmento.codigo_seg,'
      '  segmento.descricao'
      'from segmento')
    SQLConnection = DM.Conn
    Left = 88
    Top = 32
    object Qry_SegmentoCODIGO_SEG: TIntegerField
      FieldName = 'CODIGO_SEG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_SegmentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object dsp_Segmento: TDataSetProvider
    DataSet = Qry_Segmento
    Options = [poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 32
  end
  object cds_Segmento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Segmento'
    Left = 264
    Top = 32
    object cds_SegmentoCODIGO_SEG: TIntegerField
      FieldName = 'CODIGO_SEG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_SegmentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
  end
  object ds_Segmento: TDataSource
    DataSet = cds_Segmento
    Left = 376
    Top = 32
  end
end
