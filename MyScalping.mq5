//+------------------------------------------------------------------+
//|                        MyScalpingEA.mq5                          |
//+------------------------------------------------------------------+
#property copyright "by eko"
#property version   "1.00"
#property strict
 
input int TakeProfit = 300;
input int StopLoss   = 50;

void OnTick()
  {
   if (PositionsTotal() == 0)
     {
      if (Close[1] < Open[1] && Close[0] > Open[0]) // contoh candle pattern
        {
         trade.Buy(0.01, _Symbol, Bid, Bid - StopLoss * _Point, Bid + TakeProfit * _Point, "BuySignal");
        }
     }
  }
