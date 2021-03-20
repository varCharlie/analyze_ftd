#!/usr/bin/awk -f
BEGIN {
    FS="|"; HIGH=0; HIGH_TICKER=""
}

{
    if ($3 == "SYMBOL") next

    if ($4 > HIGH) { HIGH=$4 ; HIGH_TICKER=$3 }

    else if ($4 == HIGH) { OLD_T=HIGH_TICKER ; HIGH_TICKER=$3 "," OLD_T }
}

END {
    printf "Num Rows: %s\nHigh fails: %d\nHigh Ticker: %s\n", NR, HIGH, HIGH_TICKER
}
