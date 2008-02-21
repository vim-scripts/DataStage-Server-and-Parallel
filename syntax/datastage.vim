" Vim syntax file
" Language:	DataStage (Server & Parallel)
" Maintainer:	Lubomir Husar
" Last Change:	2008-02-21
"
" This file supports the DataStage Basic (you need unibasic.vim have placed in
" vim syntax folder), DSX syntax " and parallel (PX) syntax


" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if version >= 600
  setlocal iskeyword+=.
else
  set iskeyword+=.
endif

syn case ignore

"Include unibasic.vim to get UniBasic syntax
runtime! syntax/unibasic.vim

"DSX syntax
syn keyword DSXkeyword		DSJOB
syn keyword DSXkeyword		DSRECORD
syn keyword DSXkeyword		DSSHAREDCONTAINER
syn keyword DSXkeyword		DSSUBRECORD
syn keyword DSXkeyword		HEADER

syn keyword DSXSpecial		Identifier
syn keyword DSXSpecial		Name

"DataStage Universe Basic extensions
syn keyword UBspecial        DSLogInfo DSLogFatal DSLogWarn DSExecute 

syn match  UBspecial         "DSJ\.ME"
syn match  UBspecial         "DSJ\.PARAMVALUE"
syn match  UBspecial         "DSU\."
syn match  UBspecial         "DSX\."

"Parallel (PX) 
"Datetime functions
syn keyword PXFunction DateFromDaysSince
syn keyword PXFunction DateFromJulianDay
syn keyword PXFunction DaysSinceFromDate
syn keyword PXFunction HoursFromTime
syn keyword PXFunction JulianDayFromDate
syn keyword PXFunction MicroSecondsFromTime
syn keyword PXFunction MinutesFromTime
syn keyword PXFunction MonthDayFromDate
syn keyword PXFunction MonthFromDate
syn keyword PXFunction NextWeekdayFromDate
syn keyword PXFunction PreviousWeekdayFromDate
syn keyword PXFunction SecondsFromTime
syn keyword PXFunction SecondsSinceFromTimestamp
syn keyword PXFunction TimeDate
syn keyword PXFunction TimeFromMidnightSeconds
syn keyword PXFunction TimestampFromDateTime
syn keyword PXFunction TimestampFromSecondsSince
syn keyword PXFunction TimestampFromTimet
syn keyword PXFunction TimetFromTimestamp
syn keyword PXFunction WeekdayFromDate
syn keyword PXFunction YeardayFromDate
syn keyword PXFunction YearFromDate
syn keyword PXFunction YearweekFromDate

"Logical functions
syn keyword PXFunction Not
syn keyword PXFunction BitAnd
syn keyword PXFunction BitOr
syn keyword PXFunction BitXOr
syn keyword PXFunction BitExpand
syn keyword PXFunction BitCompress
syn keyword PXFunction SetBit

"Mathematical functions
syn keyword PXFunction Abs
syn keyword PXFunction Acos
syn keyword PXFunction Asin
syn keyword PXFunction Atan
syn keyword PXFunction Ceil
syn keyword PXFunction Cos
syn keyword PXFunction Cosh
syn keyword PXFunction Div
syn keyword PXFunction Exp
syn keyword PXFunction Fabs
syn keyword PXFunction Floor
syn keyword PXFunction Ldexp
syn keyword PXFunction Llabs
syn keyword PXFunction Ln
syn keyword PXFunction Log10
syn keyword PXFunction Max
syn keyword PXFunction Min
syn keyword PXFunction Mod
syn keyword PXFunction Neg
syn keyword PXFunction Pwr
syn keyword PXFunction Rand
syn keyword PXFunction Random
syn keyword PXFunction Sin
syn keyword PXFunction Sinh
syn keyword PXFunction Tan
syn keyword PXFunction Tanh

"Null handling functions
syn keyword PXFunction IsNotNull
syn keyword PXFunction IsNull
syn keyword PXFunction MakeNull
syn keyword PXFunction NullToEmpty
syn keyword PXFunction NullToZero
syn keyword PXFunction NullToValue
syn keyword PXFunction SetNull

"Number functions
syn keyword PXFunction MantissaFromDecimal
syn keyword PXFunction MantissaFromDFloat

"Rax functions
syn keyword PXFunction RawLength

"String functions
syn keyword PXFunction AlNum
syn keyword PXFunction Alpha
syn keyword PXFunction CompactWhiteSpace
syn keyword PXFunction Compare
syn keyword PXFunction ComparNoCase
syn keyword PXFunction ComparNum
syn keyword PXFunction CompareNumNoCase
syn keyword PXFunction Convert
syn keyword PXFunction Count
syn keyword PXFunction Dcount
syn keyword PXFunction Downcase
syn keyword PXFunction DQuote
syn keyword PXFunction Field
syn keyword PXFunction Index
syn keyword PXFunction Left
syn keyword PXFunction Len
syn keyword PXFunction Num
syn keyword PXFunction PadString
syn keyword PXFunction Right
syn keyword PXFunction Soundex
syn keyword PXFunction Space
syn keyword PXFunction Squote
syn keyword PXFunction Str
syn keyword PXFunction StripWhiteSpace
syn keyword PXFunction Trim
syn keyword PXFunction TrimB
syn keyword PXFunction TrimF
syn keyword PXFunction TrimLeadingTrailing
syn keyword PXFunction Upcase

"Vector function
syn keyword PXFunction ElementAt

"Type conversion functions
syn keyword PXFunction DateToString
syn keyword PXFunction DecimalToDecimal
syn keyword PXFunction DecimalToDFloat
syn keyword PXFunction DecimalToString
syn keyword PXFunction DfloatToDecimal
syn keyword PXFunction DfloatToStringNoExp
syn keyword PXFunction IsValid
syn keyword PXFunction StringToDate
syn keyword PXFunction StringToDecimal
syn keyword PXFunction StringToRaw
syn keyword PXFunction StringToTime
syn keyword PXFunction StringToTimestamp
syn keyword PXFunction TimestampToDate
syn keyword PXFunction TimestampToString
syn keyword PXFunction TimestampToTime
syn keyword PXFunction TimeTotring
syn keyword PXFunction StringToUstring
syn keyword PXFunction UstringToString

"Type casting functions
syn keyword PXFunction AsDouble
syn keyword PXFunction AsFloat
syn keyword PXFunction AsInteger

"Utility function
syn keyword PXFunction GetEnvironment

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_basic_syntax_inits")
  if version < 508
    let did_basic_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink DSXkeyword Statement
  HiLink DSXspecial  Special
  HiLink UBspecial  Special
  HiLink PXFunction Identifier

  delcommand HiLink
endif


let b:current_syntax = "datastage"

" vim: ts=8
