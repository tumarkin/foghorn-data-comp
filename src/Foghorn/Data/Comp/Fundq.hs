{-|
Module      : Foghorn.Data.Comp.Fundq
Description : Compustat North America Fundamentals Quarterly (FUNDQ) variable definitions for Foghorn DSL
Copyright   : (c) Rob Tumarkin, 2025
License     : Non-commercial (see LICENSE file)
Maintainer  : https://github.com/tumarkin
Stability   : experimental
Portability : portable

This module defines the variable set for Compustat North America Fundamentals
Quarterly (FUNDQ), represented as a GADT ('FundqV'). Each constructor
corresponds to a named variable and is indexed by an 'EconType' (e.g., 'Float_',
'Int_', 'Text_', 'Date_').
-}
module Foghorn.Data.Comp.Fundq where

import Foghorn.Base
import Prelude

-- | Generalized algebraic data type (GADT) of Compustat FUNDQ variables.
data FundqV (i :: EconIndices) (a :: EconType) where
    -- | Accounting Changes - Cumulative Effect
    Acchgq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Accounting Changes - Cumulative Effect
    Acchgy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Adoption of Accounting Changes
    Acctchgq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_ 
    -- | Accounting Standard
    Acctstdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Accumulated Other Comprehensive Income (Loss)
    Acomincq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Current Assets - Other - Total
    Acoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Current Assets - Total
    Actq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Cumulative Adjustment Factor by Ex-Date
    Adjex :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | ADR Ratio
    Adrrq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Allowance for Funds Used During Construction (Cash Flow)
    Afudccy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Allowance for Funds Used During Construction (Investing) (Cash Flow)
    Afudciy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Adjustment Factor (Company) - Cumulative by Ex-Date
    Ajexq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Adjustment Factor (Company) - Cumulative byPay-Date
    Ajpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Other Long-term Assets
    Altoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Amortization (Cash Flow)
    Amcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Non-Current Assets - Total
    Ancq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Assets Netting & Other Adjustments
    Anoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Accum Other Comp Inc - Derivatives Unrealized Gain/Loss
    Aociderglq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Accum Other Comp Inc - Other Adjustments
    Aociotherq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Accum Other Comp Inc - Min Pension Liab Adj
    Aocipenq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Accum Other Comp Inc - Unreal G/L Ret Int in Sec Assets
    Aocisecglq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Assets Level2 (Observable)
    Aol2q :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Assets and Liabilities - Other (Net Change)
    Aolochy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Assets - Other - Total
    Aoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Accounts Payable and Accrued Liabilities - Increase (Decrease)
    Apalchy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Actual Period End date
    Apdedateq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Date_
    -- | Account Payable/Creditors - Trade
    Apq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Acquisition/Merger After-Tax
    Aqaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Acquisition/Merger After-Tax
    Aqay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Acquisitions
    Aqcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Acquisition/Merger Diluted EPS Effect
    Aqdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Acquisition/Merger Diluted EPS Effect
    Aqdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Acquisition/Merger Basic EPS Effect
    Aqepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Acquisition/Merger Basic EPS Effect
    Aqepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Assets Level1 (Quoted Prices)
    Aqpl1q :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Acquisition/Merger Pretax
    Aqpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Acquisition/Merger Pretax
    Aqpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | As Reported Core - Diluted EPS Effect
    Arcedq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | As Reported Core - Diluted EPS Effect
    Arcedy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | As Reported Core - Basic EPS Effect
    Arceepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | As Reported Core - Basic EPS Effect
    Arceepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | As Reported Core - After-tax
    Arceq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | As Reported Core - After-tax
    Arcey :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Assets - Total
    Atq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Assets Level3 (Unobservable)
    Aul3q :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Billings in Excess of Cost & Earnings
    Billexceq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Balance Sheet Presentation
    Bsprq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Risk-Adjusted Capital Ratio - Tier 1
    Capr1q :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Risk-Adjusted Capital Ratio - Tier 2
    Capr2q :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Risk-Adjusted Capital Ratio - Combined
    Capr3q :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Capitalized Software
    Capsftq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Capital Surplus/Share Premium Reserve
    Capsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Capital Expenditures
    Capxy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Cash Dividends on Common Stock (Cash Flow)
    Cdvcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Cost & Earnings in Excess of Billings
    Ceiexbillq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Common/Ordinary Equity - Total
    Ceqq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Cash and Cash Equivalents - Increase (Decrease)
    Chechy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Cash and Short-Term Investments
    Cheq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Cash
    Chq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Comp Inc - Beginning Net Income
    Cibegniq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Comp Inc - Beginning Net Income
    Cibegniy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Comp Inc - Currency Trans Adj
    Cicurrq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Comp Inc - Currency Trans Adj
    Cicurry :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Comp Inc - Derivative Gains/Losses
    Ciderglq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Comp Inc - Derivative Gains/Losses
    Cidergly :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | CIK Number
    Cik :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_      
    -- | Comprehensive Income - Noncontrolling Interest
    Cimiiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Comprehensive Income - Noncontrolling Interest
    Cimiiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Comp Inc - Other Adj
    Ciotherq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Comp Inc - Other Adj
    Ciothery :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Comp Inc - Minimum Pension Adj
    Cipenq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Comp Inc - Minimum Pension Adj
    Cipeny :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Comprehensive Income - Total
    Ciq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Comp Inc - Securities Gains/Losses
    Cisecglq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Comp Inc - Securities Gains/Losses
    Cisecgly :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Comprehensive Income - Parent
    Citotalq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Comprehensive Income - Parent
    Citotaly :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Comprehensive Income - Total
    Ciy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Cost of Goods Sold
    Cogsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Cost of Goods Sold
    Cogsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Comparability Status
    Compstq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Company Name
    Conm :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_     
    -- | Level of Consolidation - Company Interim Descriptor
    Consol :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_   
    -- | Active/Inactive Status Marker
    Costat :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_   
    -- | Common Shares Used to Calculate Earnings Per Share - 12 Months Moving
    Csh12q :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Common Shares Used to Calc Earnings Per Share - Fully Diluted - 12 Months Moving
    Cshfd12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Com Shares for Diluted EPS
    Cshfdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Com Shares for Diluted EPS
    Cshfdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Common Shares Issued
    Cshiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Total Shares Repurchased - Quarter
    Cshopq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Common Shares Outstanding
    Cshoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Common Shares Used to Calculate Earnings Per Share - Basic
    Cshprq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Common Shares Used to Calculate Earnings Per Share - Basic
    Cshpry :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Common Shares Traded - Quarter
    Cshtrq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Carrying Value
    Cstkcvq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Common Stock Equivalents - Dollar Savings
    Cstkeq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Common Stock Equivalents - Dollar Savings
    Cstkey :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Common/Ordinary Stock (Capital)
    Cstkq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | ISO Currency Code
    Curcdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_   
    -- | Native Currency Code
    Curncdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_  
    -- | Currency Translation Rate
    Currtrq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | US Canadian Translation Rate - Interim
    Curuscnq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | CUSIP
    Cusip :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Calendar Data Year and Quarter
    Datacqtr :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Data Date
    Datadate :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'QtrDatadate_
    -- | Data Format
    Datafmt :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Fiscal Data Year and Quarter
    Datafqtr :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_ 
    -- | Deferred Compensation
    Dcomq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Long-Term Debt Due in One Year
    Dd1q :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Depreciation and Depletion (Cash Flow)
    Depcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Derivative Assets - Current
    Deracq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Derivative Assets Long-Term
    Deraltq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Gains/Losses on Derivatives and Hedging
    Derhedglq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Gains/Losses on Derivatives and Hedging
    Derhedgly :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Derivative Liabilities- Current
    Derlcq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Derivative Liabilities Long-Term
    Derlltq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Dilution Adjustment
    Diladq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Dilution Adjustment
    Dilady :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Dilution Available - Excluding Extraordinary Items
    Dilavq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Dilution Available - Excluding Extraordinary Items
    Dilavy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Changes in Current Debt
    Dlcchy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Debt in Current Liabilities
    Dlcq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Long-Term Debt - Issuance
    Dltisy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Long-Term Debt - Reduction
    Dltry :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Long-Term Debt - Total
    Dlttq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Discontinued Operations
    Doq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Discontinued Operations
    Doy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Accumulated Depreciation of RE Property
    Dpacreq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Depreciation, Depletion and Amortization (Accumulated)
    Dpactq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Depreciation and Amortization - Statement of Cash Flows
    Dpcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Depreciation and Amortization - Total
    Dpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Depr/Amort of Property
    Dpretq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Depr/Amort of Property
    Dprety :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Depreciation and Amortization - Total
    Dpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Deferred Revenue - Current
    Drcq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Deferred Revenue - Long-term
    Drltq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Extinguishment of Debt After-tax
    Dteaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Extinguishment of Debt After-tax
    Dteay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Extinguishment of Debt Diluted EPS Effect
    Dtedq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Extinguishment of Debt Diluted EPS Effect
    Dtedy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Extinguishment of Debt Basic EPS Effect
    Dteepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Extinguishment of Debt Basic EPS Effect
    Dteepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Extinguishment of Debt Pretax
    Dtepq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Extinguishment of Debt Pretax
    Dtepy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Dividends & Interest Receivable (Cash Flow)
    Dvintfq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Dividends - Preferred/Preference
    Dvpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Dividends per Share - Pay Date - Quarter
    Dvpspq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Div per Share - Exdate - Quarter
    Dvpsxq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Dividends - Preferred/Preference
    Dvpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Cash Dividends
    Dvy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Earnings Per Share (Diluted) - Excluding Extraordinary Items - 12 Months Moving
    Epsf12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share (Diluted) - Including Extraordinary Items
    Epsfi12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Earnings Per Share (Diluted) - Including Extraordinary Items
    Epsfiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share (Diluted) - Including Extraordinary Items
    Epsfiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share (Diluted) - Excluding Extraordinary items
    Epsfxq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share (Diluted) - Excluding Extraordinary items
    Epsfxy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share (Basic) - Including Extraordinary Items - 12 Months Moving
    Epspi12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Earnings Per Share (Basic) - Including Extraordinary Items
    Epspiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share (Basic) - Including Extraordinary Items
    Epspiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share (Basic) - Excluding Extraordinary Items
    Epspxq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share (Basic) - Excluding Extraordinary Items
    Epspxy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share (Basic) - Excluding Extraordinary Items - 12 Months Moving
    Epsx12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Common ESOP Obligation - Total
    Esopctq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Preferred ESOP Obligation - Non-Redeemable
    Esopnrq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Preferred ESOP Obligation - Redeemable
    Esoprq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Preferred ESOP Obligation - Total
    Esoptq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Equity in Net Loss/Earnings (C/F)
    Esubcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Equity in Earnings (I/S) - Unconsolidated Subsidiaries
    Esubq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Equity in Earnings (I/S)- Unconsolidated Subsidiaries
    Esuby :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Stock Exchange Code
    Exchg :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Int_
    -- | Exchange Rate Effect
    Exrey :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Foreign Exchange Income (Loss)
    Fcaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Foreign Exchange Income (Loss)
    Fcay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Final Date
    Fdateq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Date_
    -- | Funds From Operations (REIT)
    Ffoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Funds From Operations (REIT)
    Ffoy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Financing Activities - Other
    Fiaoy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Current ISO Country Code - Incorporation
    Fic :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Finance Division Other Current Assets, Total
    Finacoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Final Indicator Flag
    Finalq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Finance Division Other Long-Term Assets, Total
    Finaoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Financing Activities - Net Cash Flow
    Fincfy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Finance Division - Cash
    Finchq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Finance Division Long-Term Debt  Current
    Findlcq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Finance Division Debt  Long-Term
    Findltq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Finance Division  Short-Term Investments
    Finivstq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Finance Division Other Current Liabilities, Total
    Finlcoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Finance Division Other Long Term Liabilities, Total
    Finltoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Finance Division Notes Payable
    Finnpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Finance Division  Current Receivables
    Finreccq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Finance Division  Long-Term Receivables
    Finrecltq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Finance Division Revenue
    Finrevq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Finance Division Revenue
    Finrevy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Finance Division Interest Expense
    Finxintq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Finance Division Interest Expense
    Finxinty :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Finance Division Operating Expense
    Finxoprq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Finance Division Operating Expense
    Finxopry :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Funds from Operations - Other excluding Option Tax Benefit
    Fopoxy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Funds from Operations - Other
    Fopoy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Funds From Operations - Total
    Fopty :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Fiscal Quarter
    Fqtr :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Int_
    -- | Sources of Funds - Other
    Fsrcoy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Sources of Funds - Total
    Fsrcty :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Uses of Funds - Other
    Fuseoy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Uses of Funds - Total
    Fusety :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Fiscal Year
    Fyearq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Int_
    -- | Fiscal Year-end Month
    Fyr :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Int_
    -- | Amortization of Goodwill
    Gdwlamq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Amortization of Goodwill
    Gdwlamy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Impairments of Goodwill AfterTax - 12mm
    Gdwlia12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Impairment of Goodwill After-tax
    Gdwliaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Impairment of Goodwill After-tax
    Gdwliay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Impairments Diluted EPS - 12mm
    Gdwlid12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Impairment of Goodwill Diluted EPS Effect
    Gdwlidq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Impairment of Goodwill Diluted EPS Effect
    Gdwlidy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Impairment of Goodwill Basic EPS Effect 12MM
    Gdwlieps12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Impairment of Goodwill Basic EPS Effect
    Gdwliepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Impairment of Goodwill Basic EPS Effect
    Gdwliepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Impairment of Goodwill Pretax
    Gdwlipq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Impairment of Goodwill Pretax
    Gdwlipy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Goodwill (net)
    Gdwlq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Gain/Loss After-Tax
    Glaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Gain/Loss After-Tax
    Glay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Gain/Loss on Sale (Core Earnings Adjusted) After-tax 12MM
    Glcea12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Gain/Loss on Sale (Core Earnings Adjusted) After-tax
    Glceaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Gain/Loss on Sale (Core Earnings Adjusted) After-tax
    Glceay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Gain/Loss on Sale (Core Earnings Adjusted) Diluted EPS Effect 12MM
    Glced12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Gain/Loss on Sale (Core Earnings Adjusted) Diluted EPS
    Glcedq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Gain/Loss on Sale (Core Earnings Adjusted) Diluted EPS
    Glcedy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Gain/Loss on Sale (Core Earnings Adjusted) Basic EPS Effect 12MM
    Glceeps12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Gain/Loss on Sale (Core Earnings Adjusted) Basic EPS Effect
    Glceepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Gain/Loss on Sale (Core Earnings Adjusted) Basic EPS Effect
    Glceepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Gain/Loss on Sale (Core Earnings Adjusted) Pretax
    Glcepq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Gain/Loss on Sale (Core Earnings Adjusted) Pretax
    Glcepy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Gain/Loss Diluted EPS Effect
    Gldq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Gain/Loss Diluted EPS Effect
    Gldy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Gain/Loss Basic EPS Effect
    Glepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Gain/Loss Basic EPS Effect
    Glepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Gains/Losses on investments
    Glivq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Gains/Losses on investments
    Glivy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Gain/Loss Pretax
    Glpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Gain/Loss Pretax
    Glpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Global Company Key
    Gvkey :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Gvkey_
    -- | Gain/Loss on Ineffective Hedges
    Hedgeglq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Gain/Loss on Ineffective Hedges
    Hedgegly :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Income Before Extra Items - Adj for Common Stock Equivalents - 12MM
    Ibadj12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Income Before Extraordinary Items - Adjusted for Common Stock Equivalents
    Ibadjq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Income Before Extraordinary Items - Adjusted for Common Stock Equivalents
    Ibadjy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Income Before Extraordinary Items - Available for Common
    Ibcomq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Income Before Extraordinary Items - Available for Common
    Ibcomy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Income Before Extraordinary Items - Statement of Cash Flows
    Ibcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Income before Extraordinary Items and Noncontrolling Interests
    Ibmiiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Income before Extraordinary Items and Noncontrolling Interests
    Ibmiiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Income Before Extraordinary Items
    Ibq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Income Before Extraordinary Items
    Iby :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Invested Capital - Total - Quarterly
    Icaptq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Issue ID - Security
    Iid :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Industry Format
    Indfmt :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Interest Accrued
    Intaccq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Other Intangibles
    Intanoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Intangible Assets - Total
    Intanq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Interest Paid - Net
    Intpny :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Inventory - Decrease (Increase)
    Invchy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Inventory - Finished Goods
    Invfgq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Inventory - Other
    Invoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Inventory - Raw Materials
    Invrmq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Inventories - Total
    Invtq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Inventory - Work in Process
    Invwipq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Investment Tax Credit - Net (Cash Flow)
    Itccy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Investing Activities - Other
    Ivacoy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Investment and Advances - Equity
    Ivaeqq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Investment and Advances - Other
    Ivaoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Increase in Investments
    Ivchy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Total Long-term Investments
    Ivltq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Investing Activities - Net Cash Flow
    Ivncfy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Short-Term Investments - Change
    Ivstchy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Short-Term Investments- Total
    Ivstq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Current Liabilities - Other - Total
    Lcoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Current Liabilities - Total
    Lctq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Long-Term Liabilities (Total)
    Lltq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Liabilities Netting & Other Adjustments
    Lnoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Liabilities Level2 (Observable)
    Lol2q :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Liabilities - Other
    Loq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Liabilities - Other - Excluding Deferred Revenue
    Loxdrq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Liabilities Level1 (Quoted Prices)
    Lqpl1q :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Liabilities and Stockholders Equity - Total
    Lseq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Liabilities - Total and Noncontrolling Interest
    Ltmibq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Liabilities - Total
    Ltq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Liabilities Level3 (Unobservable)
    Lul3q :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Noncontrolling Interests - Nonredeemable - Balance Sheet
    Mibnq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Noncontrolling Interest - Redeemable - Balance Sheet
    Mibq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Noncontrolling Interests - Total - Balance Sheet
    Mibtq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Noncontrolling Interest - Income Account
    Miiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Noncontrolling Interest - Income Account
    Miiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Market Value - Total
    Mkvaltq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Accum Other Comp Inc - Marketable Security Adjustments
    Msaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Net Charge-Offs
    Ncoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Net Charge-Offs
    Ncoy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Net Interest Income (Tax Equivalent)
    Niitq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Net Interest Income (Tax Equivalent)
    Niity :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Net Interest Margin
    Nimq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Net Interest Margin
    Nimy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Net Income (Loss)
    Niq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Net Income (Loss)
    Niy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Non-Operating Income (Expense) - Total
    Nopiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Non-Operating Income (Expense) - Total
    Nopiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Nonperforming Assets - Total
    Npatq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Notes Payable
    Npq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Nonrecurring Income Taxes Diluted EPS Effect
    Nrtxtdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Nonrecurring Income Taxes Diluted EPS Effect
    Nrtxtdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Nonrecurring Income Taxes Basic EPS Effect
    Nrtxtepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Nonrecurring Income Taxes Basic EPS Effect
    Nrtxtepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Nonrecurring Income Taxes - After-tax
    Nrtxtq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Nonrecurring Income Taxes - After-tax
    Nrtxty :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Operating Activities - Net Cash Flow
    Oancfy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Order backlog
    Obkq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Earnings Per Share - Diluted - from Operations - 12MM
    Oepf12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share from Operations - 12 Months Moving
    Oeps12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share - Diluted - from Operations
    Oepsxq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share - Diluted - from Operations
    Oepsxy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | OIL & GAS METHOD
    Ogmq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Operating Income After Depreciation - Quarterly
    Oiadpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Operating Income After Depreciation - Year-to-Date
    Oiadpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Operating Income Before Depreciation - Quarterly
    Oibdpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Operating Income Before Depreciation
    Oibdpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share from Operations
    Opepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Earnings Per Share from Operations
    Opepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Dividend Rate - Assumption (%)
    Optdrq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Dividend Rate - Assumption (%)
    Optdry :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Options - Fair Value of Options Granted
    Optfvgrq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Options - Fair Value of Options Granted
    Optfvgry :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Life of Options - Assumption (# yrs)
    Optlifeq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Life of Options - Assumption (# yrs)
    Optlifey :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Risk Free Rate - Assumption (%)
    Optrfrq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Risk Free Rate - Assumption (%)
    Optrfry :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Volatility - Assumption (%)
    Optvolq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Volatility - Assumption (%)
    Optvoly :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Preliminary Date
    Pdateq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Date_
    -- | Cash Dividends on Preferred/Preference Stock (Cash Flow)
    Pdvcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Pretax Income
    Piq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Pretax Income
    Piy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Provision for Loan/Asset Losses
    Pllq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Provision for Loan/Asset Losses
    Plly :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Pension Core Adjustment - 12mm
    Pnc12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Core Pension Adjustment Diluted EPS Effect 12MM
    Pncd12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Pension Adjustment Diluted EPS Effect
    Pncdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Core Pension Adjustment Diluted EPS Effect
    Pncdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Core Pension Adjustment Basic EPS Effect 12MM
    Pnceps12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension Adjustment Basic EPS Effect
    Pncepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension Adjustment Basic EPS Effect
    Pncepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension Interest Adjustment After-tax Preliminary
    Pnciapq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension Interest Adjustment After-tax Preliminary
    Pnciapy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension Interest Adjustment After-tax
    Pnciaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Pension Interest Adjustment After-tax
    Pnciay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Pension Interest Adjustment Diluted EPS Effect Preliminary
    Pncidpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension Interest Adjustment Diluted EPS Effect Preliminary
    Pncidpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension Interest Adjustment Diluted EPS Effect
    Pncidq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Pension Interest Adjustment Diluted EPS Effect
    Pncidy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Pension Interest Adjustment Basic EPS Effect Preliminary
    Pnciepspq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension Interest Adjustment Basic EPS Effect Preliminary
    Pnciepspy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension Interest Adjustment Basic EPS Effect
    Pnciepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension Interest Adjustment Basic EPS Effect
    Pnciepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension Interest Adjustment Pretax Preliminary
    Pncippq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension Interest Adjustment Pretax Preliminary
    Pncippy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension Interest Adjustment Pretax
    Pncipq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Pension Interest Adjustment Pretax
    Pncipy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Pension Adjustment 12MM Diluted EPS Effect Preliminary
    Pncpd12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension Adjustment Diluted EPS Effect Preliminary
    Pncpdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Pension Adjustment Diluted EPS Effect Preliminary
    Pncpdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Pension Adjustment 12MM Basic EPS Effect Preliminary
    Pncpeps12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension Adjustment Basic EPS Effect Preliminary
    Pncpepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension Adjustment Basic EPS Effect Preliminary
    Pncpepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension Adjustment Preliminary
    Pncpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Core Pension Adjustment Preliminary
    Pncpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Core Pension Adjustment
    Pncq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Core Pension w/o Interest Adjustment After-tax Preliminary
    Pncwiapq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension w/o Interest Adjustment After-tax Preliminary
    Pncwiapy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension w/o Interest Adjustment After-tax
    Pncwiaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension w/o Interest Adjustment After-tax
    Pncwiay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension w/o Interest Adjustment Diluted EPS Effect Preliminary
    Pncwidpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension w/o Interest Adjustment Diluted EPS Effect Preliminary
    Pncwidpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension w/o Interest Adjustment Diluted EPS Effect
    Pncwidq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension w/o Interest Adjustment Diluted EPS Effect
    Pncwidy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension w/o Interest Adjustment Basic EPS Effect Preliminary
    Pncwiepq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension w/o Interest Adjustment Basic EPS Effect
    Pncwiepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension w/o Interest Adjustment Basic EPS Effect
    Pncwiepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension w/o Interest Adjustment Basic EPS Effect Preliminary
    Pncwiepy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension w/o Interest Adjustment Pretax Preliminary
    Pncwippq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension w/o Interest Adjustment Pretax Preliminary
    Pncwippy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Pension w/o Interest Adjustment Pretax
    Pncwipq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension w/o Interest Adjustment Pretax
    Pncwipy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Pension Adjustment
    Pncy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Nonred Pfd Shares Outs (000) - Quarterly
    Pnrshoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Population Source
    Popsrc :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Property, Plant and Equipment - Total (Gross) - Quarterly
    Ppegtq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Property Plant and Equipment - Total (Net)
    Ppentq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Post Retirement Adjustment
    Prcaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Core Post Retirement Adjustment
    Prcay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Price Close - Quarter
    Prccq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Core Post Retirement Adjustment Diluted EPS Effect 12MM
    Prcd12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Post Retirement Adjustment Diluted EPS Effect
    Prcdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Core Post Retirement Adjustment Diluted EPS Effect
    Prcdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Core Post Retirement Adjustment 12MM
    Prce12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Post Retirement Adjustment Basic EPS Effect 12MM
    Prceps12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Post Retirement Adjustment Basic EPS Effect
    Prcepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Post Retirement Adjustment Basic EPS Effect
    Prcepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Price High - Quarter
    Prchq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Price Low - Quarter
    Prclq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Core Post Retirement Adjustment 12MM Diluted EPS Effect Preliminary
    Prcpd12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Core Post Retirement Adjustment Diluted EPS Effect Preliminary
    Prcpdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Post Retirement Adjustment Diluted EPS Effect Preliminary
    Prcpdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Core Post Retirement Adjustment 12MM Basic EPS Effect Preliminary
    Prcpeps12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Post Retirement Adjustment Basic EPS Effect Preliminary
    Prcpepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Post Retirement Adjustment Basic EPS Effect Preliminary
    Prcpepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Core Post Retirement Adjustment Preliminary
    Prcpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Core Post Retirement Adjustment Preliminary
    Prcpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Repurchase Price - Average per share Quarter
    Prcraq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Redeem Pfd Shares Outs (000)
    Prshoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Purchase of Common Stock (Cash Flow)
    Prstkccy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Purchase of Common and Preferred Stock
    Prstkcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Purchase of Preferred/Preference Stock (Cash Flow)
    Prstkpcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Preferred/Preference Stock - Nonredeemable
    Pstknq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Preferred/Preference Stock (Capital) - Total
    Pstkq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Preferred/Preference Stock - Redeemable
    Pstkrq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Restructuring Cost After-tax
    Rcaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Restructuring Cost After-tax
    Rcay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Restructuring Cost Diluted EPS Effect
    Rcdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Restructuring Cost Diluted EPS Effect
    Rcdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Restructuring Cost Basic EPS Effect
    Rcepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Restructuring Cost Basic EPS Effect
    Rcepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Restructuring Cost Pretax
    Rcpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Restructuring Cost Pretax
    Rcpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | In Process R&D Expense After-tax
    Rdipaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | In Process R&D Expense After-tax
    Rdipay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | In Process R&D Expense Diluted EPS Effect
    Rdipdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | In Process R&D Expense Diluted EPS Effect
    Rdipdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | In Process R&D Expense Basic EPS Effect
    Rdipepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | In Process R&D Expense Basic EPS Effect
    Rdipepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | In Process R&D
    Rdipq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | In Process R&D
    Rdipy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Report Date of Quarterly Earnings
    Rdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Date_
    -- | Accounts Receivable - Decrease (Increase)
    Recchy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Receivables - Estimated Doubtful
    Recdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Accum Other Comp Inc - Cumulative Translation Adjustments
    Rectaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Receivables - Current Other incl Tax Refunds
    Rectoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Receivables - Total
    Rectq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Receivables - Trade
    Rectrq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Unbilled Receivables - Quarterly
    Recubq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Retained Earnings
    Req :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Total RE Property
    Retq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Unadjusted Retained Earnings
    Reunaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Revenue - Total
    Revtq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Revenue - Total
    Revty :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Reserve for Loan/Asset Losses
    Rllq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Reporting Periodicity
    Rp :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Reversal - Restructruring/Acquisition Aftertax 12MM
    Rra12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Reversal - Restructruring/Acquisition Aftertax
    Rraq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Reversal - Restructruring/Acquisition Aftertax
    Rray :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Reversal - Restructuring/Acq Diluted EPS Effect 12MM
    Rrd12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Reversal - Restructuring/Acq Diluted EPS Effect
    Rrdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Reversal - Restructuring/Acq Diluted EPS Effect
    Rrdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Reversal - Restructuring/Acq Basic EPS Effect 12MM
    Rreps12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Reversal - Restructuring/Acq Basic EPS Effect
    Rrepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Reversal - Restructuring/Acq Basic EPS Effect
    Rrepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Reversal - Restructruring/Acquisition Pretax
    Rrpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Reversal - Restructruring/Acquisition Pretax
    Rrpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Long-Term Restricted Cash & Investments
    Rstcheltq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Restricted Cash & Investments - Current
    Rstcheq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Sales/Turnover (Net)
    Saleq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Sales/Turnover (Net)
    Saley :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Cash Flow Model
    Scfq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Int_
    -- | Sale of Common Stock (Cash Flow)
    Scstkcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Other Stockholders- Equity Adjustments
    Seqoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Stockholders Equity > Parent > Index Fundamental > Quarterly
    Seqq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Settlement (Litigation/Insurance) AfterTax - 12mm
    Seta12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Settlement (Litigation/Insurance) After-tax
    Setaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Settlement (Litigation/Insurance) After-tax
    Setay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Settlement (Litigation/Insurance) Diluted EPS Effect 12MM
    Setd12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Settlement (Litigation/Insurance) Diluted EPS Effect
    Setdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Settlement (Litigation/Insurance) Diluted EPS Effect
    Setdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Settlement (Litigation/Insurance) Basic EPS Effect 12MM
    Seteps12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Settlement (Litigation/Insurance) Basic EPS Effect
    Setepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Settlement (Litigation/Insurance) Basic EPS Effect
    Setepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Settlement (Litigation/Insurance) Pretax
    Setpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Settlement (Litigation/Insurance) Pretax
    Setpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Sale of Investments
    Sivy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | S&P Core Earnings 12MM
    Spce12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | S&P Core Earnings EPS Diluted 12MM
    Spced12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | S&P Core Earnings EPS Diluted - Preliminary
    Spcedpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | S&P Core Earnings EPS Diluted - Preliminary
    Spcedpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | S&P Core Earnings EPS Diluted
    Spcedq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | S&P Core Earnings EPS Diluted
    Spcedy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | S&P Core Earnings EPS Basic 12MM
    Spceeps12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | S&P Core 12MM EPS - Basic - Preliminary
    Spceepsp12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | S&P Core Earnings EPS Basic - Preliminary
    Spceepspq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | S&P Core Earnings EPS Basic - Preliminary
    Spceepspy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | S&P Core Earnings EPS Basic
    Spceepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | S&P Core Earnings EPS Basic
    Spceepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | S&P Core Earnings 12MM - Preliminary
    Spcep12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | S&P Core Earnings 12MM EPS Diluted - Preliminary
    Spcepd12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | S&P Core Earnings - Preliminary
    Spcepq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | S&P Core Earnings - Preliminary
    Spcepy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | S&P Core Earnings
    Spceq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | S&P Core Earnings
    Spcey :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Other Special Items Diluted EPS Effect
    Spidq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Other Special Items Diluted EPS Effect
    Spidy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Other Special Items Basic EPS Effect
    Spiepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Other Special Items Basic EPS Effect
    Spiepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Other Special Items After-tax
    Spioaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Other Special Items After-tax
    Spioay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Other Special Items Pretax
    Spiopq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Other Special Items Pretax
    Spiopy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Special Items
    Spiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Special Items
    Spiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Sale of Property
    Sppey :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Sale of PP&E and Investments - (Gain) Loss
    Sppivy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Sale of Preferred/Preference Stock (Cash Flow)
    Spstkcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Source Code
    Srcq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Int_
    -- | Gain/Loss on Sale of Property
    Sretq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Gain/Loss on Sale of Property
    Srety :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Sale of Common and Preferred Stock
    Sstky :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Status Alert
    Staltq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_
    -- | Stock Compensation Expense
    Stkcoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Stock Compensation Expense
    Stkcoy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | After-tax stock compensation
    Stkcpaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | After-tax stock compensation
    Stkcpay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Deferred Income Taxes - Net (Cash Flow)
    Tdcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Stockholders Equity - Total
    Teqq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Total Fair Value Assets
    Tfvaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Total Fair Value Changes including Earnings
    Tfvceq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Total Fair Value Changes including Earnings
    Tfvcey :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Total Fair Value Liabilities
    Tfvlq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Ticker Symbol
    Tic :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Text_      
    -- | Interest Expense - Total (Financial Services)
    Tieq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Interest Expense - Total (Financial Services)
    Tiey :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Interest Income - Total (Financial Services)
    Tiiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Interest Income - Total (Financial Services)
    Tiiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Total Srcs of Funds (FOF)
    Tsafcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Treasury Stock - Number of Common Shares
    Tstknq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Treasury Stock - Total (All Capital)
    Tstkq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Income Taxes - Accrued - Increase (Decrease)
    Txachy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Excess Tax Benefit of Stock Options - Cash Flow Financing
    Txbcofy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Excess Tax Benefit of Stock Options - Cash Flow Operating
    Txbcoy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Deferred Tax Asset - Long Term
    Txdbaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Current Deferred Tax Asset
    Txdbcaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Current Deferred Tax Liability
    Txdbclq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Deferred Taxes - Balance Sheet
    Txdbq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Deferred Taxes (Statement of Cash Flows)
    Txdcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Income Taxes - Deferred
    Txdiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Deferred Taxes and Investment Tax Credit
    Txditcq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Income Taxes - Deferred
    Txdiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Income Taxes Paid
    Txpdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Income Taxes Payable
    Txpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Income Taxes - Total
    Txtq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Income Taxes - Total
    Txty :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Excise Taxes
    Txwq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Excise Taxes
    Txwy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Current Assets - Other - Utility
    Uacoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Other Assets and Liabilities - Net Change (Statement of Cash Flows)
    Uaolochy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Other Assets - Utility
    Uaoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Accounts Payable - Utility
    Uaptq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Paid In Capital - Other - Utility
    Ucapsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Contributions In Aid Of Construction
    Ucconsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Common Equity - Total - Utility
    Uceqq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Debt (Debentures) - Utility
    Uddq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Deferred Fuel - Increase (Decrease) (Statement of Cash Flows)
    Udfccy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Debt (Mortgage Bonds)
    Udmbq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Debt (Other Long-Term)
    Udoltq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Debt (Pollution Control Obligations)
    Udpcoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Preferred Dividend Requirements
    Udvpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Preferred Dividend Requirements - Utility
    Udvpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Tot Funds Ret ofSec&STD (FOF)
    Ufretsdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Gross Income (Income Before Interest Charges)
    Ugiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Gross Income (Income Before Interest Charges) - Utility
    Ugiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Inventories
    Uinvq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Current Liabilities - Other
    Ulcoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Net Income before Extraordinary Items After Noncontrolling Interest
    Uniamiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Net Income before Extraordinary Items After Noncontrolling Interest - Utility
    Uniamiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Nonoperating Income (Net) - Other
    Unopincq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Nonoperating Income (Net) - Other - Utility
    Unopincy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Inc(Dec)Working Cap (FOF)
    Unwccy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Other Internal Sources - Net (Cash Flow)
    Uoisy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Operating Income - Total - Utility
    Uopiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Update Code
    Updq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Int_
    -- | Preference Dividend Requirements - Utility
    Updvpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Preference Dividend Requirements - Utility
    Updvpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Premium On Common Stock - Utility
    Upmcstkq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Premium On Preferred Stock - Utility
    Upmpfq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Premium On Preference Stock - Utility
    Upmpfsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Premium On Subsidiary Preferred Stock - Utility
    Upmsubpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Preference Stock At Carrying Value - Utility
    Upstkcq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Preferred Stock At Carrying Value - Utility
    Upstkq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Utility Plant - Gross Additions (Cash Flow)
    Uptacy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Receivables (Net) - Utility
    Urectq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Special Items - Utility
    Uspiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Special Items - Utility
    Uspiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Net Decr in ST Debt (FOF)
    Ustdncy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Subsidiary Preferred Dividends - Utility
    Usubdvpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Subsidiary Preferred Dividends - Utility
    Usubdvpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Subsidiary Preferred Stock At Carrying Value - Utility
    Usubpcvq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Maintenance Expense - Total
    Utemq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Total Funds From Ops (FOF)
    Utfdocy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Tot Funds Frm Outside Sources (FOF)
    Utfoscy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Maintenance Expense - Total
    Utmey :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Dec(Inc) in Working Capital (FOF)
    Uwkcapcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Working Capital Changes - Total
    Wcapchy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Working Capital Change - Other - Increase/(Decrease)
    Wcapcy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Working Capital (Balance Sheet)
    Wcapq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Writedowns After-tax
    Wdaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Writedowns After-tax
    Wday :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Writedowns Diluted EPS Effect
    Wddq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Writedowns Diluted EPS Effect
    Wddy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Writedowns Basic EPS Effect
    Wdepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Writedowns Basic EPS Effect
    Wdepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Writedowns Pretax
    Wdpq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Writedowns Pretax
    Wdpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Accrued Expenses
    Xaccq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Extraordinary Items and Discontinued Operations (Statement of Cash Flows)
    Xidocy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Extraordinary Items and Discontinued Operations
    Xidoq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Extraordinary Items and Discontinued Operations
    Xidoy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Interest and Related Expense- Total
    Xintq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Interest and Related Expense- Total
    Xinty :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Extraordinary Items
    Xiq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Extraordinary Items
    Xiy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_      
    -- | Operating Expense- Total
    Xoprq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Operating Expense- Total
    Xopry :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Implied Option Expense - 12mm
    Xopt12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Implied Option EPS Diluted 12MM
    Xoptd12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Implied Option 12MM EPS Diluted Preliminary
    Xoptd12p :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Implied Option EPS Diluted
    Xoptdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Implied Option EPS Diluted Preliminary
    Xoptdqp :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Implied Option EPS Diluted Preliminary
    Xoptdqpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Implied Option EPS Diluted
    Xoptdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Implied Option EPS Basic 12MM
    Xopteps12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Implied Option 12MM EPS Basic Preliminary
    Xoptepsp12 :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Implied Option EPS Basic
    Xoptepsq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Implied Option EPS Basic Preliminary
    Xoptepsqp :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Implied Option EPS Basic Preliminary
    Xoptepsqpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Implied Option EPS Basic
    Xoptepsy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_ 
    -- | Implied Option Expense
    Xoptq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Implied Option Expense Preliminary
    Xoptqp :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_   
    -- | Implied Option Expense Preliminary
    Xoptqpy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_  
    -- | Implied Option Expense
    Xopty :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Research and Development Expense
    Xrdq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Research and Development Expense
    Xrdy :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_     
    -- | Selling, General and Administrative Expenses
    Xsgaq :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    
    -- | Selling, General and Administrative Expenses
    Xsgay :: FundqV ('Panel 'Gvkey_ 'QtrDatadate_) 'Float_    

deriving instance Show (FundqV i a)
deriving instance Eq (FundqV i a)
deriving instance Ord (FundqV i a)
