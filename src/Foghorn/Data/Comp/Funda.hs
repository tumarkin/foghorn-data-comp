{-|
Module      : Foghorn.Data.Comp.Funda
Description : Compustat North America Fundamentals Annual (FUNDA) variable definitions for Foghorn DSL
Copyright   : (c) Rob Tumarkin, 2025
License     : Non-commercial (see LICENSE file)
Maintainer  : https://github.com/tumarkin
Stability   : experimental
Portability : portable

This module defines the variable set for Compustat North America Fundamentals
Annual (FUNDA), represented as a GADT ('FundaV'). Each constructor corresponds
to a named variable and is indexed by an 'EconType' (e.g., 'Float_', 'Int_',
'Text_', 'Date_').
-}
module Foghorn.Data.Comp.Funda where

import Foghorn.Base
import Prelude

-- | Generalized algebraic data type (GADT) of Compustat FUNDA variables.
data FundaV (i :: EconIndices) (a :: EconType) where
    -- |  Accounting Changes - Cumulative Effect
    Acchg :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acceptances Outstanding
    Acco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  ARO Accretion Expense
    Accrt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Adoption of Accounting Changes
    Acctchg :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Accounting Standard
    Acctstd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Current Assets of Discontinued Operations
    Acdo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Assets - Other - Total
    Aco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Current Assets Excl Discontinued Operations
    Acodo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accumulated Other Comprehensive Income (Loss)
    Acominc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Assets - Other - Sundry
    Acox :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Assets - Other - Total As Reported
    Acoxar :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquired Assets > Other Long-Term Assets
    Acqao :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Shares Issued for Acquisition
    Acqcshi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquired Assets - Goodwill
    Acqgdwl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquisitions - Current Income Contribution
    Acqic :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquired Assets - Intangibles
    Acqintan :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquired Assets - Inventory
    Acqinvt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquired Loans
    Acqlntal :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquisition Method
    Acqmeth :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Net Interest Income Contribution
    Acqniintc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquired Assets > Property, Plant & Equipment
    Acqppe :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquisitions - Current Sales Contribution
    Acqsc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Assets - Total
    Act :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cumulative Adjustment Factor by Ex-Date - Calendar
    AdjexC :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cumulative Adjustment Factor by Ex-Date - Fiscal
    AdjexF :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Amortization of Deferred Policy Acquisition Costs
    Adpac :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  ADR Ratio
    Adrr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accrued Expenses and Deferred Income
    Aedi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Allowance for Funds Used During Construction (Cash Flow)
    Afudcc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Allowance for Funds Used During Construction (Investing) (Cash Flow)
    Afudci :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Adjustment Factor (Company) - Cumulative by Ex-Date
    Ajex :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Adjustment Factor (Company) - Cumulative byPay-Date
    Ajp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Long-term Assets of Discontinued Operations
    Aldo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Amortization of Intangibles
    Am :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Amortization (Cash Flow) - Utility
    Amc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Amortization of Deferred PChar 1es
    Amdc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Amortization of Goodwill
    Amgw :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Assets Netting & Other Adjustments
    Ano :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Assets - Other
    Ao :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accum Other Comp Inc - Derivatives Unrealized Gain/Loss
    Aocidergl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accum Other Comp Inc - Other Adjustments
    Aociother :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accum Other Comp Inc - Min Pension Liab Adj
    Aocipen :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accum Other Comp Inc - Unreal G/L Ret Int in Sec Assets
    Aocisecgl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Assets excluding Discontinued Operations
    Aodo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Assets Level2 (Observable)
    Aol2 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Assets and Liabilities - Other - Net Change
    Aoloch :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Assets - Other - Sundry
    Aox :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accounts Payable - Trade
    Ap :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accounts Payable and Accrued Liabilities - Increase/(Decrease)
    Apalch :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accounts Payable/Creditors - Brokers, Dealers, and Clearing Organizations
    Apb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accounts Payable/Creditors - Customer
    Apc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Actual Period End date
    Apdedate :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accounts Payable/Creditors - Other - FS
    Apofs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquisition/Merger After-tax
    Aqa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquisitions
    Aqc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquisition/Merger Diluted EPS Effect
    Aqd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquisition/Merger Basic EPS Effect
    Aqeps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquisitions - Income Contribution
    Aqi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquisition/Merger Pretax
    Aqp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Assets Level1 (Quoted Prices)
    Aqpl1 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Acquisitions - Sales Contribution
    Aqs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accounts Receivable/Debtors - Brokers, Dealers, and Clearing Organizations
    Arb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accounts Receivable/Debtors - Customer
    Arc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  As Reported Core - After-tax
    Arce :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  As Reported Core - Diluted EPS Effect
    Arced :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  As Reported Core - Basic EPS Effect
    Arceeps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accounts Receivable/Debtors - Total
    Artfs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Assets - Total
    At :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Auditor
    Au :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Assets Level3 (Unobservable)
    Aul3 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Auditor Opinion
    Auop :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Auditor Opinion - Internal Control
    Auopic :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Appropriations to Untaxed Reserves
    Autxr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Benefits Assumed - Life
    Balr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Benefits Assumed - Nonlife
    Banlr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Average Short-Term Borrowings
    Bast :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Average Short-Term Borrowings Rate
    Bastr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Benefits Assumed - Total
    Batr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Brokerage, Clearing and Exchange Fees
    Bcef :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Benefits Ceded - Life
    Bclr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Benefits and Claims - Total (Business Line)
    Bcltbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Benefits Ceded - Nonlife
    Bcnlr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Benefits and Claims - Reinsurance (Business Line)
    Bcrbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Benefits and Claims - Total (Insurance)
    Bct :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Benefits and Claims - Other (Business Line)
    Bctbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Benefits Ceded - Total
    Bctr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Billings in Excess of Cost & Earnings
    Billexce :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Book Value Per Share
    Bkvlps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Benefits - Life - Total (Business Line)
    Bltbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Balance Sheet Presentation
    Bspr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Customers' Acceptance
    Ca :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Risk-Adjusted Capital Ratio - Tier 1
    Capr1 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Risk-Adjusted Capital Ratio - Tier 2
    Capr2 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Risk-Adjusted Capital Ratio - Combined
    Capr3 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capital Surplus/Share Premium Reserve
    Caps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capitalized Software
    Capsft :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capital Expenditures
    Capx :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capital Expend Property, Plant and Equipment Schd V
    Capxv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Compensating Balance
    Cb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Claims Incurred - Insurance
    Cbi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capitalized Deferred Polcy Acquisition Costs
    Cdpac :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cash Dividends on Common Stock (Cash Flow)
    Cdvc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cost & Earnings in Excess of Billings
    Ceiexbill :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Chief Executive Officer SOX Certification
    Ceoso :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Common/Ordinary Equity - Total
    Ceq :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Equity - Liquidation Value
    Ceql :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Equity - Tangible
    Ceqt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Commissions and Fees - (Broker/Dealer)
    Cfbd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Commissions and Fees - (Real Estate)
    Cfere :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Commissions and Fees - Other
    Cfo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Chief Financial Officer SOX Certification
    Cfoso :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Commissions and Fees Paid - Other
    Cfpdo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capital Gains - After-Tax
    Cga :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capital Gains - Realized (Insurance)
    Cgri :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capital Gains - Total (Insurance)
    Cgti :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capital Gains - Unrealized (Insurance)
    Cgui :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cash
    Ch :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cash and Short-Term Investments
    Che :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cash and Cash Equivalents - Increase/(Decrease)
    Chech :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cash and Deposits - Segregated
    Chs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Comprehensive Income - Total
    Ci :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Comp Inc - Beginning Net Income
    Cibegni :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Comp Inc - Currency Trans Adj
    Cicurr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Comp Inc - Derivative Gains/Losses
    Cidergl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  CIK Number
    Cik :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Comprehensive Income - Noncontrolling Interest
    Cimii :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Comp Inc - Other Adj
    Ciother :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Comp Inc - Minimum Pension Adj
    Cipen :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Comp Inc - Securities Gains/Losses
    Cisecgl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Comprehensive Income - Parent
    Citotal :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capitalized Leases - Due in 2nd Year
    Cld2 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capitalized Leases - Due in 3rd Year
    Cld3 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capitalized Leases - Due in 4th Year
    Cld4 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Capitalized Leases - Due in 5th Year
    Cld5 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Contingent Liabilities - Forward and Future Contracts
    Clfc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Contingent Liabilities - Foreign Exchange Commitments
    Clfx :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Contingent Liabilities - Guarantees
    Clg :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Contingent Liabilities - Interest Rate Swaps
    Clis :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Contingent Liabilities - Letters of Credit
    Cll :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Contingent Liabilities - Loan Commitments
    Cllc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Contingent Liabilities - Other
    Clo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Credit Loss Reserve Allocated for LDC Loans
    Clrll :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Contingent Liabilities - Total
    Clt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Commercial Paper
    Cmp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Claims - Non-Life - Total (Business Line)
    Cnltbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cost of Goods Sold
    Cogs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Comparability Status
    Compst :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Company Name
    Conm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Level of Consolidation - Company Annual Descriptor
    Consol :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Active/Inactive Status Marker
    Costat :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Commercial Property and Casualty Claims (Business Line)
    Cpcbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Claims Paid - Other
    Cpdoi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Claims Paid - Non-Life
    Cpnli :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Commercial Property and Casualty Premiums (Business Line)
    Cppbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Claims Paid - Reinsurance
    Cprei :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Consolidation Reserves
    Crv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves for Claims (Losses) - Nonlife (Insurance)
    Crvnli :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Shares Used to Calc Earnings Per Share - Fully Diluted
    Cshfd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Shares Issued
    Cshi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Shares Outstanding
    Csho :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Shares Used to Calculate Earnings Per Share - Basic
    Cshpri :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common/Ordinary Shareholders
    Cshr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Shares Reserved for Conversion - Convertible Debt
    Cshrc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Shares Reserved for Conversion - Preferred Stock
    Cshrp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Shares Reserved for Conversion - Stock Options
    Cshrso :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Shares Reserved for Conversion - Total
    Cshrt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Shares Reserved for Conversion - Warrants and Other
    Cshrw :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Shares Traded - Annual - Calendar
    CshtrC :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Shares Traded - Annual - Fiscal
    CshtrF :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common/Ordinary Stock (Capital)
    Cstk :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Stock-Carrying Value
    Cstkcv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Stock Equivalents - Dollar Savings
    Cstke :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  ISO Currency Code
    Curcd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Native Currency Code
    Curncd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Currency Translation Rate
    Currtr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  US Canadian Translation Rate
    Curuscn :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  CUSIP
    Cusip :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Data Date
    Datadate :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Datadate_
    -- |  Data Format
    Datafmt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Death Benefits - Insurance
    Dbi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred PChar 1es
    Dc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Debt - Capitalized Lease Obligations
    Dclo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Compensation
    Dcom :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Convertible Debt and Preferred Stock
    Dcpstk :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Consolidated Subsidiary
    Dcs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Senior Convertible
    Dcvsr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Subordinated Convertible
    Dcvsub :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Convertible
    Dcvt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Debentures
    Dd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Long-Term Debt Due in One Year
    Dd1 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Due in 2nd Year
    Dd2 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Due in 3rd Year
    Dd3 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Due in 4th Year
    Dd4 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Due in 5th Year
    Dd5 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation and Depletion (Cash Flow)
    Depc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Derivative Assets - Current
    Derac :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Derivative Assets Long-Term
    Deralt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gains/Losses on Derivatives and Hedging
    Derhedgl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Derivative Liabilities- Current
    Derlc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Derivative Liabilities Long-Term
    Derllt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Policy Acquisition Costs
    Dfpac :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Finance Subsidiary
    Dfs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation of Tangible Fixed Assets
    Dfxa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dilution Adjustment
    Diladj :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dilution Available - Excluding Extraordinary Items
    Dilavx :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt in Current Liabilities - Total
    Dlc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Debt - Changes
    Dlcch :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Long-Term Debt - Issuance
    Dltis :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Long-term Debt
    Dlto :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Long-Term Debt - Tied to Prime
    Dltp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Long-Term Debt - Reduction
    Dltr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Long-Term Debt - Subordinated
    Dltsub :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Long-Term Debt - Total
    Dltt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Mortgages & Other Secured
    Dm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Notes
    Dn :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Discontinued Operations
    Do_ :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonrecurring Disc Operations
    Donr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation and Amortization
    Dp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation (Accumulated) - Buildings
    Dpacb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation (Accumulated) - Construction in Progress
    Dpacc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation (Accumulated) - Land and Improvements
    Dpacli :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation (Accumulated) - Leases
    Dpacls :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation (Accumulated) - Machinery and Equipment
    Dpacme :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation (Accumulated) - Natural Resources
    Dpacnr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation (Accumulated) - Other
    Dpaco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accumulated Depreciation of RE Property
    Dpacre :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation, Depletion and Amortization (Accumulated)
    Dpact :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation and Amortization (Cash Flow)
    Dpc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deposits - Demand - Customer
    Dpdc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deposits - Long-Term Time - Bank
    Dpltb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depr/Amort of Property
    Dpret :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deposits - Savings - Customer
    Dpsc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deposits - Short-Term Demand - Bank
    Dpstb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deposits - Total - Banks
    Dptb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deposits - Total - Customer
    Dptc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deposits - Time - Customer
    Dptic :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation (Accumulated) - Ending Balance (Schedule VI)
    Dpvieb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation (Accumulated) - Other Changes (Schedule VI)
    Dpvio :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation (Accumulated) - Retirements (Schedule VI)
    Dpvir :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Revenue - Current
    Drc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deduction From Policy and Claims Reserves for Reinsurance Ceded
    Drci :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Revenue - Long-term
    Drlt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt-Subordinated
    Ds :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Total Debt Including Current
    Dt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Extinguishment of Debt After-tax
    Dtea :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Extinguishment of Debt Diluted EPS Effect
    Dted :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Extinguishment of Debt Basic EPS Effect
    Dteeps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Extinguishment of Debt Pretax
    Dtep :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt - Unamortized Debt Discount and Other
    Dudd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cash Dividends (Cash Flow)
    Dv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividends Common/Ordinary
    Dvc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividends Declared and Not Provided
    Dvdnp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividends & Interest Receivable (Cash Flow)
    Dvintf :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividends - Preferred/Preference
    Dvp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preferred Dividends in Arrears
    Dvpa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cash Dividends Paid
    Dvpd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividends and Bonuses Paid Policyholders
    Dvpdp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation (Accumulated) - Beginning Balance (Schedule VI)
    Dvpibb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividends per Share - Pay Date - Calendar
    DvpspC :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividends per Share - Pay Date - Fiscal
    DvpspF :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividends per Share - Ex-Date - Calendar
    DvpsxC :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividends per Share - Ex-Date - Fiscal
    DvpsxF :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividends Received from Permanent Investments
    Dvrpiv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Development Revenue (Real Estate)
    Dvrre :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividends - Share Capital - Other
    Dvsco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividends - Total
    Dvt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt (excl Capitalized Leases) - Due in 2nd Year
    Dxd2 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt (excl Capitalized Leases) - Due in 3rd Year
    Dxd3 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt (excl Capitalized Leases) - Due in 4th Year
    Dxd4 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt (excl Capitalized Leases) - Due in 5th Year
    Dxd5 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Exchange Adjustments (Assets)
    Ea :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Earnings Before Interest and Taxes
    Ebit :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Earnings Before Interest
    Ebitda :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Equity in Earnings - After-Tax
    Eiea :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Directors' Emoluments
    Emol :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Employees
    Emp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Earnings Per Share (Diluted) - Including Extraordinary Items
    Epsfi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Earnings Per Share (Diluted) - Excluding Extraordinary Items
    Epsfx :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Earnings Per Share (Basic) - Including Extraordinary Items
    Epspi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Earnings Per Share (Basic) - Excluding Extraordinary Items
    Epspx :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common ESOP Obligation - Total
    Esopct :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  ESOP Debt - Long Term
    Esopdlt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preferred ESOP Obligation - Non-Redeemable
    Esopnr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preferred ESOP Obligation - Redeemable
    Esopr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preferred ESOP Obligation - Total
    Esopt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Equity in Earnings - Unconsolidated Subsidiaries
    Esub :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Equity in Net Loss - Earnings
    Esubc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Exchange Adjustments (Liabilities)
    Excadj :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Stock Exchange Code
    Exchg :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Exchange Rate Effect
    Exre :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Buildings at Cost
    Fatb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Construction in Progress at Cost
    Fatc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Fixed Assets and Investments - Disposals - Gain (Loss)
    Fatd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Machinery and Equipment at Cost
    Fate :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Leases at Cost
    Fatl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Natural Resources at Cost
    Fatn :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Other at Cost
    Fato :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Land and Improvements at Cost
    Fatp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Foreign Exchange Income (Loss)
    Fca :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Final Date
    Fdate :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Federal Funds Purchased
    Fdfr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Foreign Exchange Assets
    Fea :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Foreign Exchange Liabilities
    Fel :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Funds From Operations (REIT)
    Ffo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Federal Funds Sold
    Ffs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Financing Activities - Other
    Fiao :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current ISO Country Code - Incorporation
    Fic :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Finance Division Other Current Assets, Total
    Finaco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Final Indicator Flag
    Final :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Finance Division Other Long-Term Assets, Total
    Finao :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Financing Activities - Net Cash Flow
    Fincf :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Finance Division - Cash
    Finch :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Finance Division Long-Term Debt  Current
    Findlc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Finance Division Debt  Long-Term
    Findlt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Finance Division  Short-Term Investments
    Finivst :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Finance Division Other Current Liabilities, Total
    Finlco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Finance Division Other Long Term Liabilities, Total
    Finlto :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Finance Division Notes Payable
    Finnp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Finance Division  Current Receivables
    Finrecc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Finance Division  Long-Term Receivables
    Finreclt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Finance Division Revenue
    Finrev :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Finance Division Interest Expense
    Finxint :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Finance Division Operating Expense
    Finxopr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Funds from Operations - Other
    Fopo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Funds from Operations - Other excluding Option Tax Benefit
    Fopox :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Funds From Operations - Total
    Fopt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Sources of Funds - Other
    Fsrco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Sources of Funds - Total
    Fsrct :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Uses of Funds - Other
    Fuseo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Uses of Funds - Total
    Fuset :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Data Year - Fiscal
    Fyear :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Fyear_
    -- |  Fiscal Year-end Month
    Fyr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Group Benefits (Business Line)
    Gbbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Goodwill
    Gdwl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Goodwill Amortization
    Gdwlam :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Impairments of Goodwill After-tax
    Gdwlia :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Impairments of Goodwill Diluted EPS Effect
    Gdwlid :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Impairments of Goodwill Basic EPS Effect
    Gdwlieps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Impairments of Goodwill Pretax
    Gdwlip :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Grants - Equity Reserves
    Geqrv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gain/Loss After-tax
    Gla :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gain/Loss on Sale (Core Earnings Adjusted) After-tax
    Glcea :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gain/Loss on Sale (Core Earnings Adjusted) Diluted EPS
    Glced :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gain/Loss on Sale (Core Earnings Adjusted) Basic EPS Effect
    Glceeps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gain/Loss on Sale (Core Earnings Adjusted) Pretax
    Glcep :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gain/Loss Diluted EPS Effect
    Gld :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gain/Loss Basic EPS Effect
    Gleps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gains/Losses on investments
    Gliv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gain/Loss Pretax
    Glp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Government Grants
    Govgr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Percent of Gov't Owned
    Govtown :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gross Profit (Loss)
    Gp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Group Premiums - Health (Business Line)
    Gphbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Group Premiums - Life (Business Line)
    Gplbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Group Premiums - Other (Business Line)
    Gpobl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Group Premiums - Retirement Benefits (Business Line)
    Gprbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Group Premiums - Total (Business Line)
    Gptbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Global Company Key
    Gvkey :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- |  Goodwill Written Off
    Gwo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gain/Loss on Ineffective Hedges
    Hedgegl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets - Equity Securities (Insurance)
    Iaeq :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets (Insurance) - Equity Securities (Cost)
    Iaeqci :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets (Insurance) - Equity Securities (Market)
    Iaeqmi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets (Insurance) - Fixed Income Securities (Cost)
    Iafici :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets - Fixed Income Securities (Insurance)
    Iafxi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets (Insurance) - Fixed Income Securities (Market)
    Iafxmi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets (Insurance) - Listed Securities-Total
    Iali :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets - Loans - Other (Insurance)
    Ialoi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets - Loans - Total (Insurance)
    Ialti :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets - Mortgage Loans (Insurance)
    Iamli :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets - Other (Insurance)
    Iaoi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets - Policy Loans (Insurance)
    Iapli :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets - Real Estate (Insurance)
    Iarei :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets (Insurance) - Securities - Sundry (Cost)
    Iasci :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets (Insurance) - Securities - Sundry (Market)
    Iasmi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets - Securities - Sundry (Insurance)
    Iassi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets - Securities - Total (Insurance)
    Iasti :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets (Insurance) - Securities - Total (Cost)
    Iatci :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets - Total (Insurance)
    Iati :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets (Insurance) - Securities - Total (Market)
    Iatmi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Assets (Insurance) - Unlisted Securities - Total
    Iaui :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Before Extraordinary Items
    Ib :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Before Extraordinary Items - Adjusted for Common Stock Equivalents
    Ibadj :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Individual Benefits (Business Line)
    Ibbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Before Extraordinary Items (Cash Flow)
    Ibc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Before Extraordinary Items - Available for Common
    Ibcom :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Banking Income
    Ibki :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income before Extraordinary Items and Noncontrolling Interests
    Ibmii :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Invested Capital - Total
    Icapt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Dividend Income - Investment Securities
    Idiis :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Dividend Income - Loans/Claims/Advances - Banks
    Idilb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Dividend Income - Loans/Claims/Advances - Customers
    Idilc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Dividend Income - Sundry
    Idis :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Dividend Income - Short-Term Investments
    Idist :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Related Income - Total
    Idit :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Dividend Income - Trading Securities
    Idits :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Issue ID - Security
    Iid :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Investment Income (Real Estate)
    Iire :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Industry Format
    Indfmt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Income - Non-interest - Total (Bank)
    Initb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Intangible Assets - Total
    Intan :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Intangibles
    Intano :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest Capitalized
    Intc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest Paid - Net
    Intpn :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Inventory - Decrease (Increase)
    Invch :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Inventories - Finished Goods
    Invfg :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Inventories - Other
    Invo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Inventory/Stock - Other
    Invofs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Inventory/Stock - Real Estate Held for Development
    Invreh :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Inventory/Stock - Real Estate Under Development
    Invrei :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Inventory/Stock - Real Estate Held for Sale
    Invres :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Inventories - Raw Materials
    Invrm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Inventories - Total
    Invt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Inventories - Work In Process
    Invwip :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income - Other (Broker Dealer)
    Iobd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income - Other (Insurance)
    Ioi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income - Other (Real Estate)
    Iore :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Property
    Ip :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Individual Premiums - Annuity (Business Line)
    Ipabl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Property (Cost)
    Ipc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Individual Premiums - Health (Business Line)
    Iphbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Individual Premiums - Life (Business Line)
    Iplbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Individual Premiums - Other (Business Line)
    Ipobl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Individual Premiums - Total (Business Line)
    Iptbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Insurance Premiums - Total (Insurance)
    Ipti :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Property (Valuation)
    Ipv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Related Income - Reinsurance (Insurance)
    Irei :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Rental Income
    Irent :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Related Income (Insurance)
    Irii :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Related Income - Life (Insurance)
    Irli :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Related Income - Non-Life (Insurance)
    Irnli :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Related Income - Sundry (Insurance)
    Irsi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Equity
    Iseq :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Equity (Cost)
    Iseqc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Equity (Market)
    Iseqm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Fixed Income
    Isfi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Fixed Income (Cost)
    Isfxc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Fixed Income (Market)
    Isfxm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Gain (Loss) - Realized
    Isgr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Gain (Loss) - Total
    Isgt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Gain (Loss) - Unrealized
    Isgu :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Local Governments
    Islg :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Local Governments (Cost)
    Islgc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Local Governments (Market)
    Islgm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Listed - Total
    Islt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Statement Model Number
    Ismod :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - National Governments
    Isng :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - National Governments (Cost)
    Isngc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - National Governments (Market)
    Isngm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Invetsment Securities - Other (Cost)
    Isotc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Other
    Isoth :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Invetsment Securities - Other (Market)
    Isotm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Sundry (Cost)
    Issc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Sundry (Market)
    Issm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Sundry
    Issu :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities -Total
    Ist :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Total (Cost)
    Istc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Total (Market)
    Istm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Securities - Unlisted - Total
    Isut :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Tax Credit (Balance Sheet)
    Itcb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Tax Credit - Net (Cash Flow) - Utility
    Itcc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Tax Credit (Income Account)
    Itci :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investing Activities - Other
    Ivaco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment and Advances - Equity
    Ivaeq :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment and Advances - Other
    Ivao :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Increase in Investments
    Ivch :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investments Grants and Other Deductions
    Ivgod :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Income - Total (Insurance)
    Ivi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investing Activities - Net Cash Flow
    Ivncf :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investments - Permanent - Total
    Ivpt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Short-Term Investments - Total
    Ivst :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Short-Term Investments - Change
    Ivstch :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loans/Claims/Advances - Banks and Government - Total
    Lcabg :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loans/Claims/Advances - Commercial
    Lcacl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loans/Claims/Advances - Consumer
    Lcacr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loans/Claims/Advances - Government
    Lcag :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loans/Claims/Advances - Lease
    Lcal :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loans/Claims/Advances - Long-Term (Banks)
    Lcalt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loans/Claims/Advances - Mortgage
    Lcam :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loans/Claims/Advances - Other
    Lcao :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loans/Claims/Advances - Short-Term - Banks
    Lcast :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loans/Claims/Advances - Total
    Lcat :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Liabilities - Other - Total
    Lco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Liabilities - Other - Sundry
    Lcox :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Liabilities - Other - Total As Reported
    Lcoxar :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Liabilities - Other - Excluding Deferred Revenue
    Lcoxdr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Liabilities - Total
    Lct :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loans/Claims/Advances - Customer - Total
    Lcuacu :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Leasing Income
    Li :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Life Insurance in Force
    Lif :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  LIFO Reserve
    Lifr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  LIFO Reserve - Prior
    Lifrp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  LDC Loans Outstanding - Medium and Long-Term
    Lloml :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  LDC Loans Outstanding - Other
    Lloo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  LDC Loans Outstanding - Total
    Llot :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loan Loss Recoveries - Credited to Income
    Llrci :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loan Loss Recoveries - Credited to Reserves
    Llrcr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loan Loss Written Off - PChar 1ed to Income
    Llwoci :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loan Loss Written Off - PChar 1ed to Reserves
    Llwocr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Liabilities Netting & Other Adjustments
    Lno :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Liabilities - Other - Total
    Lo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Liabilities Level2 (Observable)
    Lol2 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Liabilities - Other - Excluding Deferred Revenue
    Loxdr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Liabilities Level1 (Quoted Prices)
    Lqpl1 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Legal Reserves
    Lrv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Liabilities - Other - Sundry
    Ls :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Liabilities and Stockholders Equity - Total
    Lse :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Life Insurance Surrenders and Terminations
    Lst :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Liabilities - Total
    Lt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Long Term Contract Method
    Ltcm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Liabilities Level3 (Unobservable)
    Lul3 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Noncontrolling Interest (Balance Sheet)
    Mib :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Noncontrolling Interests - Nonredeemable - Balance Sheet
    Mibn :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Noncontrolling Interests - Total - Balance Sheet
    Mibt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Noncontrolling Interest (Income Account)
    Mii :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Market Value - Total - Fiscal
    Mkvalt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Rental Commitments - Minimum - 1st Year
    Mrc1 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Rental Commitments - Minimum - 2nd Year
    Mrc2 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Rental Commitments - Minimum - 3rd Year
    Mrc3 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Rental Commitments - Minimum - 4th Year
    Mrc4 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Rental Commitments - Minimum - 5th Year
    Mrc5 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Rental Commitments - Minimum - 5 Year Total
    Mrct :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Thereafter Portion of Leases
    Mrcta :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Marketable Securities Adjustment
    Msa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Mandatory Securities Valuation Reserve (Statutory)
    Msvrv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Loans From Securities Finance Companies for Margin Transactions
    Mtl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  North America Industrial Classification System - Historical
    Naicsh :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonadmitted Assets - Total (Statutory)
    Nat :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net PChar 1e-Offs
    Nco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Non-Financial Services Revenue
    Nfsr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Income (Loss)
    Ni :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Income Adjusted for Common/Ordinary Stock (Capital) Equivalents
    Niadj :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Income Effect Capitalized Interest
    Nieci :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Interest Income
    Niint :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Pro Forma Net Interest Income - Current
    Niintpfc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Pro Forma Net Interest Income - Prior
    Niintpfp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Interest Income (Tax Equivalent)
    Niit :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Interest Margin
    Nim :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Items - Other
    Nio :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Pro Forma Net Income - Current
    Nipfc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Pro Forma Net Income - Prior
    Nipfp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Item - Total
    Nit :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Income - Total (Statutory)
    Nits :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonoperating Income (Expense)
    Nopi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonoperating Income (Expense) - Other
    Nopio :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Notes Payable - Short-Term Borrowings
    Np :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonperforming Assets - Nonaccrual Loans
    Npanl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonperforming Assets - Other Real Estate Owned
    Npaore :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonperforming Assets - Restructured Loans
    Nparl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonperforming Assets - Total
    Npat :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonrecurring Income Taxes After-tax
    Nrtxt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonrecurring Income Tax Diluted EPS Effect
    Nrtxtd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonrecurring Income Tax Basic EPS Effect
    Nrtxteps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Operating Activities - Net Cash Flow
    Oancf :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Order Backlog
    Ob :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  OIL & GAS METHOD
    Ogm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Operating Income After Depreciation
    Oiadp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Operating Income Before Depreciation
    Oibdp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Earnings Per Share from Operations
    Opeps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Operating Income - Life
    Opili :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Operating Income - As Reported
    Opincar :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Operating Income - Non-Life
    Opini :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Operating Income - Other
    Opioi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Operating Income - Reinsurance
    Opiri :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Operating Income - Total
    Opiti :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Earnings Per Share - Diluted - from Operations
    Oprepsx :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options - Cancelled (-)
    Optca :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Dividend Rate - Assumption (%)
    Optdr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options Exercisable (000)
    Optex :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options - Exercised (-)
    Optexd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options - Fair Value of Options Granted
    Optfvgr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options - Granted
    Optgr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Life of Options - Assumption (# yrs)
    Optlife :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options Outstanding - Beg of Year
    Optosby :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options Outstanding - End of Year
    Optosey :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options Outstanding Beg of Year - Price
    Optprcby :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options Cancelled - Price
    Optprcca :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options Exercised - Price
    Optprcex :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options Outstanding End of Year - Price
    Optprcey :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options Granted - Price
    Optprcgr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Options Exercisable - Weighted Avg Price
    Optprcwa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Risk Free Rate - Assumption (%)
    Optrfr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Volatility - Assumption (%)
    Optvol :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums Assumed - Life
    Palr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums Assumed - Nonlife
    Panlr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums Assumed - Total
    Patr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Provision - Credit Losses (Income Account)
    Pcl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums Ceded - Life
    Pclr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums Ceded - Nonlife
    Pcnlr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums Ceded - Total
    Pctr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preliminary Date
    Pdate :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Period Duration
    Pddur :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cash Dividends on Preferred/Preference Stock (Cash Flow)
    Pdvc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Pretax Income
    Pi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Pretax Income - Domestic
    Pidom :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Pretax Income - Foreign
    Pifo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Provision for Loan/Asset Losses
    Pll :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums - Life - Total (Business Line)
    Pltbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Pension Adjustment
    Pnca :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Pension Adjustment Diluted EPS Effect
    Pncad :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Pension Adjustment Basic EPS Effect
    Pncaeps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Pension Interest Adjustment After-tax
    Pncia :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Pension Interest Adjustment Diluted EPS Effect
    Pncid :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Pension Interest Adjustment Basic EPS Effect
    Pncieps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Pension Interest Adjustment Pretax
    Pncip :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Pension w/o Interest Adjustment After-tax
    Pncwia :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Pension w/o Interest Adjustment Diluted EPS Effect
    Pncwid :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Pension w/o Interest Adjustment Basic EPS Effect
    Pncwieps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Pension w/o Interest Adjustment Pretax
    Pncwip :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums - Nonlife - Total (Business Line)
    Pnlbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums Written - Non-Life
    Pnli :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonred Pfd Shares Outs (000)
    Pnrsho :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums - Other (Business Line)
    Pobl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Population Source
    Popsrc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Personal Property and Casualty Claims (Business Line)
    Ppcbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant and Equipment - Total (Gross)
    Ppegt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Buildings (Net)
    Ppenb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Construction in Progress (Net)
    Ppenc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Land and Improvements (Net)
    Ppenli :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Leases (Net)
    Ppenls :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Machinery and Equipment (Net)
    Ppenme :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Natural Resources (Net)
    Ppennr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Other (Net)
    Ppeno :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant and Equipment - Total (Net)
    Ppent :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant and Equipment - Beginning Balance (Schedule V)
    Ppevbb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Ending Balance (Schedule V)
    Ppeveb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant, and Equipment - Other Changes (Schedule V)
    Ppevo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Property, Plant and Equipment - Retirements (Schedule V)
    Ppevr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Personal Property and Casualty Premiums - Automobile (Business Line)
    Pppabl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Personal Property and Casualty Premiums - Homeowners (Business Line)
    Ppphbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Personal Property and Casualty Premiums - Other (Business Line)
    Pppobl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Personal Property & Casualty Premiums - Total (Business Line)
    Ppptbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Participation Rights Certificates
    Prc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Post Retirement Adjustment
    Prca :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Post Retirement Adjustment Diluted EPS Effect
    Prcad :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Core Post Retirement Adjustment Basic EPS Effect
    Prcaeps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Price Close - Annual - Calendar
    PrccC :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Price Close - Annual - Fiscal
    PrccF :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Price High - Annual - Calendar
    PrchC :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Price High - Annual - Fiscal
    PrchF :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Price Low - Annual - Calendar
    PrclC :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Price Low - Annual - Fiscal
    PrclF :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums - Reinsurance (Business Line)
    Prebl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums Written - Reinsurance
    Pri :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Proposed Dividends
    Prodv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Redeem Pfd Shares Outs (000)
    Prsho :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Purchase of Common and Preferred Stock
    Prstkc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Purchase of Common Stock (Cash Flow)
    Prstkcc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Purchase of Preferred/Preference Stock (Cash Flow)
    Prstkpc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Policy Reserves - Total (Statutory)
    Prvt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preferred/Preference Stock (Capital) - Total
    Pstk :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preferred Stock - Convertible
    Pstkc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preferred Stock - Liquidating Value
    Pstkl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preferred/Preference Stock - Nonredeemable
    Pstkn :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preferred/Preference Stock - Redeemable
    Pstkr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preferred Stock - Redemption Value
    Pstkrv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums - Total (Business Line)
    Ptbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Principal Transactions
    Ptran :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Provision - Credit Losses (Balance Sheet)
    Pvcl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Provision - Other
    Pvo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Provisions - Other (Net)
    Pvon :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Provision - Pension Liabilities
    Pvpl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Provisions - Total
    Pvt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premiums Written - Other
    Pwoi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reinsurance Assets - Deposits and Other (Insurance)
    Radp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Resale Agreements
    Ragr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Rank - Auditor
    Rank :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reinsurance Assets - Receivable/Debtors (Insurance)
    Rari :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reinsurance Assets - Total (Insurance)
    Rati :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Restructuring Costs After-tax
    Rca :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Restructuring Costs Diluted EPS Effect
    Rcd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Restructuring Costs Basic EPS Effect
    Rceps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves for Credit Losses (Assets)
    Rcl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Restructuring Costs Pretax
    Rcp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  In Process R&D Expense
    Rdip :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  In Process R&D Expense After-tax
    Rdipa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  In Process R&D Expense Diluted EPS Effect
    Rdipd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  In Process R&D Expense Basic EPS Effect
    Rdipeps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Regulatory Deposits
    Rdp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Retained Earnings
    Re :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Retained Earnings - Restatement
    Rea :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Retained Earnings - Other Adjustments
    Reajo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accounts Receivable - Decrease (Increase)
    Recch :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Receivables - Current - Other
    Recco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Receivables - Estimated Doubtful
    Recd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Receivables - Total
    Rect :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Retained Earnings - Cumulative Translation Adjustment
    Recta :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Receivables - Trade
    Rectr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Unbilled Receivables
    Recub :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Total RE Property
    Ret :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Retained Earnings - Unadjusted
    Reuna :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Retained Earnings - Unrestricted
    Reunr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Revenue - Total
    Revt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Revenue/Income - Sundry
    Ris :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserve for Loan/Asset Losses
    Rll :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reinsurance Liabilities - Other
    Rlo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reinsurance Liabilities - Payables/Creditors
    Rlp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reinsurers' Liability for Reserves (Insurance)
    Rlri :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reinsurance Liabilities - Total
    Rlt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Auditors' Remuneraton
    Rmum :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Repurchase Agreements
    Rpag :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reversal - Restructruring/Acquisition Aftertax
    Rra :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reversal - Restructuring/Acq Diluted EPS Effect
    Rrd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reversal - Restructuring/Acq Basic EPS Effect
    Rreps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reversal - Restructruring/Acquisition Pretax
    Rrp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Restricted Cash & Investments - Current
    Rstche :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Long-Term Restricted Cash & Investments
    Rstchelt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves for Benefits - Life - Claims (Insurance)
    Rvbci :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves for Benefits - Life - Policy (Insurance)
    Rvbpi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves for Benefits - Life - Total (Insurance)
    Rvbti :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves - Distributable - Other
    Rvdo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves - Distributable - Total
    Rvdt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Equity Reserves - Total
    Rveqt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Revaluation Reserve
    Rvlrv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves - Nondistributable - Other
    Rvno :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves - Nondistributable - Total
    Rvnt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves - Reinsurance (Insurance)
    Rvri :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves - Sundry (Insurance)
    Rvsi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves - Total
    Rvti :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves - Tax-Regulated
    Rvtxr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves for Unearned Premiums (Insurance)
    Rvupi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Reserves - Untaxed
    Rvutx :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Separate Account Assets
    Saa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Separate Account Liabilities
    Sal :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Sales/Turnover (Net)
    Sale :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Pro Forma Net Sales - Current Year
    Salepfc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Pro Forma Net Sales - Prior Year
    Salepfp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Securities Borrowed and Deposited by Customers
    Sbdc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Securities In Custody
    Sc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cash Flow Format
    Scf :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Share Capital - Other
    Sco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Sale of Common Stock (Cash Flow)
    Scstkc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Securities Gains (Losses) - Unrealized
    Secu :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Stockholders Equity - Parent
    Seq :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Stockholders- Equity Adjustments
    Seqo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Settlement (Litigation/Insurance) After-tax
    Seta :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Settlement (Litigation/Insurance) Diluted EPS Effect
    Setd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Settlement (Litigation/Insurance) Basic EPS Effect
    Seteps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Settlement (Litigation/Insurance) Pretax
    Setp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Standard Industrial Classification - Historical
    Sic4 :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Sic4_
    -- |  Sale of Investments
    Siv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  S&P Core Earnings
    Spce :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  S&P Core Earnings EPS Diluted
    Spced :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  S&P Core Earnings EPS Basic
    Spceeps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Special Items
    Spi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Special Items Diluted EPS Effect
    Spid :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Special Items Basic EPS Effect
    Spieps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Special Items After-tax
    Spioa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Special Items Pretax
    Spiop :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Sale of Property
    Sppe :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Sale of Property, Plant and Equipment and Investments - Gain (Loss)
    Sppiv :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Sale of Preferred/Preference Stock (Cash Flow)
    Spstkc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Source Document
    Src :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gain/Loss on Sale of Property
    Sret :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Surplus - Total (Statutory)
    Srt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Securities Sold Not Yet Purchased
    Ssnp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Sale of Common and Preferred Stock
    Sstk :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Status Alert
    Stalt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Short-Term Borrowings - Other
    Stbo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Short-Term Investments - Other
    Stio :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Stock Compensation Expense
    Stkco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  After-tax stock compensation
    Stkcpa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Income Taxes - Net (Cash Flow)
    Tdc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Trading/Dealing Account Securities - Corporate Debt
    Tdscd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Trading/Dealing Account Securities - Corporate Equity
    Tdsce :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Trading/Dealing Securities - Gain (Loss)
    Tdsg :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Trading/Dealing Account Securities - Local Governments
    Tdslg :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Trading/Dealing Account Securities - Money Market
    Tdsmm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Trading/Dealing Account Securities - National Governments
    Tdsng :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Trading/Dealing Account Securities - Other
    Tdso :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Trading/Dealing Account Securities - Sundry
    Tdss :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Trading/Dealing Account Securities - Total
    Tdst :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Stockholders Equity - Total
    Teq :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Trust Fees
    Tf :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Total Fair Value Assets
    Tfva :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Total Fair Value Changes including Earnings
    Tfvce :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Total Fair Value Liabilities
    Tfvl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Ticker Symbol
    Tic :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Interest Expense - Total (Financial Services)
    Tie :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest Income - Total (Financial Services)
    Tii :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Tax Loss Carry Forward
    Tlcf :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Cumulative Translation Adjustment
    Transa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Treasury Stock (Assets)
    Tsa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Total Sources/Applications of Funds (Cash Flow)
    Tsafc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Treasury Stock - Other Share Capital
    Tso :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Treasury Stock - Total (All Capital)
    Tstk :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Treasury Stock - Common
    Tstkc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Treasury Stock Book Value - Memo Entry
    Tstkme :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Treasury Stock - Number of Common Shares
    Tstkn :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Treasury Stock - Preferrred
    Tstkp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Taxes - Accrued - Increase/(Decrease)
    Txach :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Excess Tax Benefit Stock Options - Cash Flow Operating
    Txbco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Excess Tax Benefit of Stock Options - Cash Flow Financing
    Txbcof :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Taxes - Current
    Txc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Taxes (Balance Sheet)
    Txdb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Tax Asset - Long Term
    Txdba :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Tax Asset - Current
    Txdbca :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Tax Liability - Current
    Txdbcl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Taxes (Cash Flow)
    Txdc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Taxes-Federal
    Txdfed :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Taxes-Foreign
    Txdfo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Taxes - Deferred
    Txdi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Taxes and Investment Tax Credit
    Txditc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Taxes-State
    Txds :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Tax - Equivalent Adjustment
    Txeqa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Tax - Equivalent Interest Income (Gross)
    Txeqii :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Taxes - Federal
    Txfed :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Taxes - Foreign
    Txfo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Deferred Tax Asset (Liab) - Total
    Txndb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Deferred Tax Asset
    Txndba :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Deferred Tax Liability
    Txndbl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Tax Residual
    Txndbr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Taxes - Other
    Txo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Taxes Payable
    Txp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Taxes Paid
    Txpd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Tax Refund
    Txr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Taxes - State
    Txs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Income Taxes - Total
    Txt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Unrecog Tax Benefit Adj.
    Txtubadjust :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Unrecog. Tax Benefits - Beg of Year
    Txtubbegin :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Unrecog. Tax Benefits - End of Year
    Txtubend :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Chg. In Unrecog. Tax Benefits - Max
    Txtubmax :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Chg. In Unrecog. Tax Benefits - Min
    Txtubmin :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Decrease- Current Tax Positions
    Txtubposdec :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Increase- Current Tax Positions
    Txtubposinc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Decrease- Prior Tax Positions
    Txtubpospdec :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Increase- Prior Tax Positions
    Txtubpospinc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Settlements with Tax Authorities
    Txtubsettle :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Lapse of Statute of Limitations
    Txtubsoflimit :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Impact on Effective Tax Rate
    Txtubtxtr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest & Penalties Accrued - B/S
    Txtubxintbs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest & Penalties Reconized - I/S
    Txtubxintis :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Value Added Taxes
    Txva :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Excise Taxes
    Txw :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Assets and Liabilities - Net Change (Statement of Cash Flows)
    Uaoloch :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Assets - Utility
    Uaox :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accounts Payable - Utility
    Uapt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Paid in Capital - Other
    Ucaps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Contributions in Aid of Construction
    Uccons :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Common Equity Total - Utility
    Uceq :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Customer Advances for Construction
    Ucustad :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Credits and Operating Reserves - Other
    Udcopres :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt (Debentures)
    Udd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Deferred Fuel - Increase (Decrease) (Statement of Cash Flows)
    Udfcc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt (Mortgage Bonds) - Utility
    Udmb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt (Other Long-Term) - Utility
    Udolt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Debt (Pollution Control Obligations) - Utility
    Udpco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation of Fixed Assets
    Udpfa :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Utility - Liberalized Depreciation Code
    Udpl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- |  Preferred Dividend Requirements
    Udvp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Funds for Retirement of Securities and Short-Term Debt (Cash Flow)
    Ufretsd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Gross Income (Income Before Interest PChar 1es)
    Ugi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Unearned Income
    Ui :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Inventories - Utility
    Uinvt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Liabilities - Miscellaneous
    Ulcm :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Liabilities - Other - Utility
    Ulco :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Net Income before Extraordinary Items and after Noncontrolling Interest
    Uniami :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Unappropriated Net Loss
    Unl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Unappropriated Net Profit (Stockholders' Equity)
    Unnp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Unappropriated Net Profit
    Unnpl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Nonoperating Income (Net) - Other
    Unopinc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Working Capital (Use) - Increase (Decrease) (Cash Flow)
    Unwcc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Internal Sources - Net (Cash Flow)
    Uois :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Operating Income - Total - Utility
    Uopi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Operating Reserves
    Uopres :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Update Code
    Upd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preference Dividend Requirements*
    Updvp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premium on Common Stock*
    Upmcstk :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premium on Preferred Stock*
    Upmpf :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premium on Preference Stock*
    Upmpfs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Premium on Subsidiary Preferred Stock*
    Upmsubp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preferred Stock at Carrying Value
    Upstk :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preference Stock at Carrying Value*
    Upstkc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Preferred/Preference Stock Sinking Fund Requirement
    Upstksf :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Receivables (Net)
    Urect :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accounts Receivable - Trade - Utility
    Urectr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accrued Unbilled Revenues (Balance Sheet)
    Urevub :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Special Items
    Uspi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Short-Term Debt - Decrease (Increase) (Cash Flow)
    Ustdnc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Subsidiary Preferred Dividends
    Usubdvp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Subsidiary Preferred Stock at Carrying Value
    Usubpstk :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Total Funds From Operations (Cash Flow)
    Utfdoc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Total Funds from Outside Sources (Cash Flow)
    Utfosc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Maintenance Expense - Total
    Utme :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Current Taxes - Federal (Operating)
    Utxfed :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Working Capital (Source) - Decrease (Increase) (Cash Flow)
    Uwkcapc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest On Short-Term Debt - Utility
    Uxinst :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest on Long-Term Debt*
    Uxintd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investments - Permanent - Associated Companies
    Vpac :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investments - Permanent - Other
    Vpo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Working Capital (Balance Sheet)
    Wcap :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Working Capital Change - Other - Increase/(Decrease)
    Wcapc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Working Capital Change - Total
    Wcapch :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Writedowns After-tax
    Wda :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Writedowns Diluted EPS Effect
    Wdd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Writedowns Basic EPS Effect
    Wdeps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Writedowns Pretax
    Wdp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Accrued Expenses
    Xacc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Advertising Expense
    Xad :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Administrative and General Expense - Other
    Xago :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Administrative and General Expense - Total
    Xagt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Communications Expense
    Xcom :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Commissions Expense (Insurance)
    Xcomi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depletion Expense (Schedule VI)
    Xdepl :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Depreciation Expense (Schedule VI)
    Xdp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Expense - Development (Real Estate)
    Xdvre :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Equipment and Occupancy Expense
    Xeqo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Extraordinary Items
    Xi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Extraordinary Items and Discontinued Operations
    Xido :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Extraordinary Items and Discontinued Operations (Cash Flow)
    Xidoc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest Expense - Deposits - Banks
    Xindb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest Expense - Deposits - Customer
    Xindc :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest Expense - Sundry
    Xins :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest Expense - Short-Term Borrowings
    Xinst :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest and Related Expense - Total
    Xint :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Interest Expense - Long-Term Debt
    Xintd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Implied Option Expense
    Xintopt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Investment Expense (Insurance)
    Xivi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Expense - Investment (Real Estate)
    Xivre :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Staff Expense - Total
    Xlr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Insurance Expense
    Xnbi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Non-Financial Services Expense
    Xnf :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Expense - Noninsurance
    Xnins :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Expense - Noninterest - Total (Bank)
    Xnitb :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Expense - Other (Broker/Dealer)
    Xobd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Expenses - Other (Insurance)
    Xoi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Operating Expenses - Total
    Xopr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Operatings Expenses - As Reported
    Xoprar :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Implied Option EPS Diluted
    Xoptd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Implied Option EPS Basic
    Xopteps :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Expense - Other (Real Estate)
    Xore :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Prepaid Expenses
    Xpp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Pension and Retirement Expense
    Xpr :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Research and Development Expense
    Xrd :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Research & Development - Prior
    Xrdp :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Rental Expense
    Xrent :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Expense - Sundry
    Xs :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Selling, General and Administrative Expense
    Xsga :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Staff Expense (Income Account)
    Xstf :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Staff Expense - Other
    Xstfo :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Staff Expense - Wages and Salaries
    Xstfws :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Expense - Total
    Xt :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Other Underwriting Expenses - Insurance
    Xuw :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Underwriting Expense - Life
    Xuwli :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Underwriting Expense - Non-Life
    Xuwnli :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Underwriting Expense - Other
    Xuwoi :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Underwriting Expense - Reinsurance
    Xuwrei :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- |  Underwriting Expense - Total
    Xuwti :: FundaV ('Panel 'Gvkey_ 'Datadate_) 'Float_

deriving instance Show (FundaV i a)
deriving instance Eq (FundaV i a)
deriving instance Ord (FundaV i a)
