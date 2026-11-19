package net.rtccloud.sdk.util;

import defpackage.a;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes4.dex */
public final class FlipTable {
    private static final String EMPTY = "(empty)";
    private final int[] columnWidths;
    private final int columns;
    private final String[][] data;
    private final int emptyWidth;
    private final String[] headers;

    private FlipTable(String[] strArr, String[][] strArr2) {
        this.headers = strArr;
        this.data = strArr2;
        int length = strArr.length;
        this.columns = length;
        this.columnWidths = new int[length];
        int i2 = -1;
        while (true) {
            if (i2 >= strArr2.length) {
                int i3 = (this.columns - 1) * 3;
                for (int i4 : this.columnWidths) {
                    i3 += i4;
                }
                this.emptyWidth = i3;
                if (i3 < 7) {
                    int[] iArr = this.columnWidths;
                    int i5 = this.columns - 1;
                    iArr[i5] = (7 - i3) + iArr[i5];
                    return;
                }
                return;
            }
            String[] strArr3 = i2 == -1 ? strArr : strArr2[i2];
            if (strArr3.length != this.columns) {
                md.n(a.i(this.columns, " columns", fc.p(i2 + 1, strArr3.length, "Row ", "'s ", " columns != ")));
                throw null;
            }
            for (int i6 = 0; i6 < this.columns; i6++) {
                for (String str : strArr3[i6].split("\\n")) {
                    int[] iArr2 = this.columnWidths;
                    iArr2[i6] = Math.max(iArr2[i6], str.length());
                }
            }
            i2++;
        }
    }

    public static String of(String[] strArr, String[][] strArr2) {
        if (strArr == null) {
            r81.d("headers == null");
            return null;
        }
        if (strArr.length == 0) {
            md.n("Headers must not be empty.");
            return null;
        }
        if (strArr2 != null) {
            return new FlipTable(strArr, strArr2).toString();
        }
        r81.d("data == null");
        return null;
    }

    private static String pad(int i2, String str) {
        return String.format(n00.m(i2, " %1$-", "s "), str);
    }

    private void printData(StringBuilder sb, String[] strArr) {
        int iMax = 1;
        int i2 = 0;
        while (i2 < iMax) {
            for (int i3 = 0; i3 < this.columns; i3++) {
                sb.append('|');
                String[] strArrSplit = strArr[i3].split("\\n");
                iMax = Math.max(iMax, strArrSplit.length);
                sb.append(pad(this.columnWidths[i3], i2 < strArrSplit.length ? strArrSplit[i2] : ""));
            }
            sb.append("|\n");
            i2++;
        }
    }

    private void printDivider(StringBuilder sb, String str) {
        int i2 = 0;
        while (i2 < this.columns) {
            sb.append(i2 == 0 ? str.charAt(0) : str.charAt(2));
            sb.append(pad(this.columnWidths[i2], "").replace(' ', str.charAt(1)));
            i2++;
        }
        sb.append(str.charAt(4));
        sb.append('\n');
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        printDivider(sb, "|=|=|");
        printData(sb, this.headers);
        if (this.data.length == 0) {
            printDivider(sb, "|=|=|");
            sb.append('|');
            sb.append(pad(this.emptyWidth, EMPTY));
            sb.append("|\n");
            printDivider(sb, "|===|");
        } else {
            int i2 = 0;
            while (i2 < this.data.length) {
                printDivider(sb, i2 == 0 ? "|=|=|" : "|-|-|");
                printData(sb, this.data[i2]);
                i2++;
            }
            printDivider(sb, "|=|=|");
        }
        return sb.toString();
    }
}
