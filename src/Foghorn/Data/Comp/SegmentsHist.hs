{-|
Module : Foghorn.Data.Comp.SegmentsHist
Description : Compustat North America Segments Historical (SEGMENTS) variable definitions for the Foghorn DSL
Copyright : (c) Rob Tumarkin, 2025
License : Non-commercial (see LICENSE file)
Maintainer  : https://github.com/tumarkin
Stability : experimental
Portability : portable

This module defines the variable set for Compustat North America Segments
Historical (SegmentsHist), represented as a GADT ('SegmentsHistV'). Each
constructor corresponds to a named segment-level variable (typically annual
fundamentals by segment) and is indexed by an 'EconType' (e.g., 'Float_',
'Int_', 'Text_', 'Date_').
-}
module Foghorn.Data.Comp.SegmentsHist where

import Foghorn.Base
import Prelude

data SegmentsHistV (i :: EconIndices) (a :: EconType) where
    -- | Global Company Key - Segment Annual Fundamentals
    Gvkey :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Segment Type
    Stype :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Segment Identifier
    Sid :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Long-lived Assets
    Atlls :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Long-lived Assets Data Code
    AtllsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Date_
    -- | Capital Expenditures
    Capxs :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Capital Expenditures Data Code
    CapxsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Capital Expenditures Footnote
    CapxsFn :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Cost and Expenses - Total
    Caxts :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Cost and Expenses - Total Data Code
    CaxtsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Cost of Goods Sold
    Cogss :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Cost of Goods Sold Data Code
    CogssDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Depreciation and Amortization
    Dps :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Depreciation and Amortization Data Code
    DpsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Employees
    Emps :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Employees Data Code
    EmpsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Employees Footnote
    EmpsFn :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Equity in Earnings
    Esubs :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Equity in Earnings Data Code
    EsubsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Equity in Earnings Footnote
    EsubsFn :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Identifiable (Total) Assets
    Ias :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Identifiable (Total) Assets Data Code
    IasDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Income before Extraordinary Items
    Ibs :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Income before Extraordinary Items Data Code
    IbsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Interest Income
    Iints :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Interest Income Data Code
    IintsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Intersegment Eliminations
    Intseg :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Intersegment Eliminations Data Code
    IntsegDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Investments at Equity
    Ivaeqs :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Investments at Equity Data Code
    IvaeqsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Net Income (Loss)
    Nis :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Net Income (Loss) Data Code
    NisDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Nonoperating Income (Expense) - excluding Interest
    Nopxs :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Nonoperating Income (Expense) - excluding Interest Data Code
    NopxsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Net Interest Income (Expense)
    Nxints :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Net Interest Income (Expense) Data Code
    NxintsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Order Backlog
    Obs :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Order Backlog Data Code
    ObsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Other Cost and Expenses
    Ocaxs :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Other Cost and Expenses Data Code
    OcaxsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Other Eliminations (Income)
    Oelim :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Other Eliminations (Income) Data Code
    OelimDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Operating Income after Depreciation
    Oiadps :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Operating Income after Depreciation Data Code
    OiadpsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Operating Income before Depreciation
    Oibdps :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Operating Income before Depreciation Data Code
    OibdpsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Operating Profit (Loss)
    Ops :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Operating Profit (Loss) Data Code
    OpsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Operating Profit (Loss) Footnote
    OpsFn :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Property, Plant & Equipment
    Ppents :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Property, Plant & Equipment Data Code
    PpentsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Pretax Income
    Ptis :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Pretax Income Data Code
    PtisDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Research and Development
    Rds :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Research and Development Data Code
    RdsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Research and Development Footnote
    RdsFn :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Total Revenues
    Revts :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Revenues Data Code
    RevtsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Net Sales
    Sales :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Net Sales Data Code
    SalesDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Net Sales Footnote
    SalesFn :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Export Sales
    Salexg :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Export Sales Data Code
    SalexgDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Special Items
    Spis :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Special Items Data Code
    SpisDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Income Taxes
    Txts :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Income Taxes Data Code
    TxtsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Excise Taxes
    Txws :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Excise Taxes Data Code
    TxwsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Extraordinary Items and Discontinued Operations
    Xidos :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Extraordinary Items and Discontinued Operations Data Code
    XidosDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Interest Expense
    Xints :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Interest Expense Data Code
    XintsDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Selling, General & Administrative
    Xsgas :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Selling, General & Administrative Data Code
    XsgasDc :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Data Date - Segment Annual Fundamentals
    Datadate :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Date_
    -- | Source Date - Segment Annual Fundamentals
    Srcdate :: SegmentsHistV ('Panel 'Gvkey_ 'Datadate_) 'Date_

deriving instance Show (SegmentsHistV i a)
deriving instance Eq (SegmentsHistV i a)
deriving instance Ord (SegmentsHistV i a)
