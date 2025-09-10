{-|
Module      : Foghorn.Data.Comp.Anncomp
Description : Compustat ExecuComp Annual Compensation (ANNCOMP) variable definitions for Foghorn DSL
Copyright   : (c) Rob Tumarkin, 2025
License     : Non-commercial (see LICENSE file)
Maintainer  : https://github.com/tumarkin
Stability   : experimental
Portability : portable

This module defines the variable set for Compustat’s ExecuComp Annual
Compensation (ANNCOMP) database, represented as a GADT ('AnncompV'). Each
constructor corresponds to a named variable and is indexed by an 'EconType'
(e.g., 'Float_', 'Int_', 'Text_', 'Date_').
-}
module Foghorn.Data.Comp.Anncomp where

import Foghorn.Base
import Prelude

-- | Generalized algebraic data type (GADT) of ExecuComp Annual Compensation variables.
data AnncompV (i :: EconIndices) (a :: EconType) where
    -- | Street Address
    Address :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Executive's Age
    Age :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | All Other Paid
    Allothpd :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | All Other Total
    Allothtot :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Date Became CEO
    Becameceo :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Date_
    -- | Bonus ($)
    Bonus :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Annual CEO Flag
    Ceoann :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Annual CFO Flag
    Cfoann :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Estimated Payments in event of change in control
    ChgCtrlPymt :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | City
    City :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Textual Note Describing Unusual Situation
    Comment :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Company Name
    Coname :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | ID number for each executive/company combination
    CoPerRol :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'CoPerRol_
    -- | CUSIP and Issue Number
    Cusip :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Datadate
    Datadate :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Datadate_
    -- | Total Aggregate Balance in Deferred Compensation Plans at Fiscal Year End ($)
    DeferBalanceTot :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Registrant Contributions to Deferred Compensation Plans in Last Fiscal Year ($)
    DeferContribCoTot :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Executive Contributions to Deferred Compensation Plans in Last Fiscal Year ($)
    DeferContribExecTot :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Aggregate Earnings in Deferred Compensation Plans in Last Fiscal Year ($)
    DeferEarningsTot :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Portion of Deferred Earnings Reported As Compensation ($)
    DeferRptAsCompTot :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Aggregate Withdrawals/Distributions From Deferred Compensation Plans in Last Fiscal Year ($)
    DeferWithdrTot :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Equity Incentive Plan--Number of Unearned Shares That Have Not Vested
    EipUnearnNum :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Equity Incentive Plan - Value of Unearned/Unvested Shares at Fiscal Year End ($)
    EipUnearnVal :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Stock Exchange Company Trades on
    Exchange :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Executive served as a director during the fiscal year
    Execdir :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Executive ID number
    Execid :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Current Rank by Salary + Bonus
    Execrank :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Executive Rank by Salary + Bonus
    Execrankann :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | First Name
    ExecFname :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Full Name
    ExecFullname :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Last Name
    ExecLname :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Middle Name
    ExecMname :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Gender
    Gender :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Company ID Number
    Gvkey :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Gvkey_
    -- | Industry Group Description
    Inddesc :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Executive Is Listed in the Compensation Committee Interlocks section of the proxy
    Interlock :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Date Joined Company
    JoinedCo :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Date_
    -- | Date Left Company
    Leftco :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Date_
    -- | Date Left as CEO
    Leftofc :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Date_
    -- | LTIP Payouts
    Ltip :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | NAICS Code
    Naics :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Description of NAICS Code
    Naicsdesc :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Name Prefix
    Nameprefix :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Non-Equity Incentive Plan Compensation ($)
    NoneqIncent :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | True Indicates data in this table is based on the 1992 reporting  rules
    OldDatafmtFlag :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Value of Option Awards - FAS 123R ($)
    OptionAwards :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Options Granted ($ - Compustat Black Scholes value)
    OptionAwardsBlkValue :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Grant Date Fair Value of Options Granted ($ - as valued by company)
    OptionAwardsFv :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Options Granted
    OptionAwardsNum :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Options Granted ($ - As Reported by Company)
    OptionAwardsRptValue :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Number of Shares Acquired on Option Exercise
    OptExerNum :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Value Realized on Option Exercise ($)
    OptExerVal :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Estimated Value of In-the-Money Unexercised Exercisable Options ($)
    OptUnexExerEstVal :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Unexercised Exercisable Options
    OptUnexExerNum :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Estimated Value Of In-the-Money Unexercised Unexercisable Options ($)
    OptUnexUnexerEstVal :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Unexercised Unexercisable Options
    OptUnexUnexerNum :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Other Annual
    Othann :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | All Other Compensation ($)
    Othcomp :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Present Age
    Page :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Current CEO
    Pceo :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Current CFO
    Pcfo :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Change in Pension Value and NonQualified Deferred Compensation Earnings ($)
    PensionChg :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Payments Made From All Pension Plans During the Year ($)
    PensionPymtsTot :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Present Value of Accumulated Pension Benefits From All Pension Plans ($)
    PensionValueTot :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Reason Left Company
    Reason :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Date Rejoined Company
    Rejoin :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Date_
    -- | Date Releft Company
    Releft :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Date_
    -- | Executive Is Listed in a Stock Option Reprice table
    Reprice :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Years Credited in Company's Retirement Plan
    RetYrs :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Restricted Stock Grant ($)
    Rstkgrnt :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Years Until Restricted Stock Grant Begins to Vest (if <3)
    Rstkvyrs :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Salary ($)
    Salary :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Salary Percent Change Year-to-Year (%)
    SalPct :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Shares Owned - Options Excluded
    ShrownExclOpts :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Percentage of Total Shares Owned - Options Excluded
    ShrownExclOptsPct :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Shares Owned - As Reported
    ShrownTot :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Percentage of Total Shares Owned - As Reported
    ShrownTotPct :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Number of Shares Acquired on Vesting
    ShrsVestNum :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Value Realized on Vesting ($)
    ShrsVestVal :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | SIC Code
    Sic :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | SIC Code Description
    Sicdesc :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | S&P Index
    Spcode :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Industry Group
    Spindex :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | State
    State :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Value of Stock Awards - FAS 123R ($)
    StockAwards :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Grant Date Fair Value of Stock Awarded Under Plan-Based Awards ($)
    StockAwardsFv :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Restricted Stock Holdings
    StockUnvestNum :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Restricted Stock Holdings ($)
    StockUnvestVal :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Area Code
    SubTele :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Total Compensation (Salary + Bonus + Other Annual + Restriced Stock Grants + LTIP Payouts + All Other + Value of Option Grants)
    Tdc1 :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Annual ranking by TDC1 Total Compensation
    Tdc1RankAnnual :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Total Compensation (Salary + Bonus + Other Annual + Restriced Stock Grants + LTIP Payouts + All Other + Value of Options Exercised)
    Tdc2 :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | TDC1 Percent Change Year-to-Year (%)
    Tdc1Pct :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | TDC2 Percent Change Year-to-Year (%)
    Tdc2Pct :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Telephone Number
    Tele :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Estimated Payments in event of involuntary termination
    TermPymt :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Ticker Symbol
    Ticker :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Most Recent Title
    Title :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Annual Title
    Titleann :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_
    -- | Total Compensation - Stock/Options Valued Using Grant Date Fair Value ($)
    TotalAlt1 :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Compensation - Stock Valued at time of vesting/Options Valued at Time of Exercise ($)
    TotalAlt2 :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Compensation (fair value of stock/option awards) Percent Change Year-to-Year (%)
    TotalAlt1Pct :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Compensation (options exercised/stock vested) Percent Change Year-to-Year (%)
    TotalAlt2Pct :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Current Compensation (Salary + Bonus)
    TotalCurr :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Current Compensation Percent Change Year-to-Year (%)
    TotalCurrPct :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Compensation - As Reported in SEC Filings ($)
    TotalSec :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Total Compensation (SEC total) Percent Change Year-to-Year (%)
    TotalSecPct :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Float_
    -- | Fiscal Year
    Year :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Int_
    -- | Zip Code
    Zip :: AnncompV ('Panel 'Gvkey_ 'Datadate_) 'Text_

-- deriving (Show, Eq, Ord, Ix, Bounded)

deriving instance Show (AnncompV i a)
deriving instance Eq (AnncompV i a)
deriving instance Ord (AnncompV i a)

