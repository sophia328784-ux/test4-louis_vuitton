package com.perfectcorp.thirdparty.com.google.common.math;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
    
        if (r0 > 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        if (r5 > 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003c, code lost:
    
        if (r5 < 0) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(int r5, int r6) {
        /*
            java.math.RoundingMode r0 = java.math.RoundingMode.CEILING
            r0.getClass()
            r1 = 0
            if (r6 == 0) goto L49
            int r2 = r5 / r6
            int r3 = r6 * r2
            int r3 = r5 - r3
            if (r3 != 0) goto L11
            goto L42
        L11:
            r5 = r5 ^ r6
            int r5 = r5 >> 31
            r5 = r5 | 1
            int[] r4 = com.perfectcorp.thirdparty.com.google.common.math.b.f42381a
            int r0 = r0.ordinal()
            r0 = r4[r0]
            switch(r0) {
                case 1: goto L40;
                case 2: goto L42;
                case 3: goto L3c;
                case 4: goto L3e;
                case 5: goto L39;
                case 6: goto L25;
                case 7: goto L25;
                case 8: goto L25;
                default: goto L21;
            }
        L21:
            defpackage.a61.h()
            return r1
        L25:
            int r0 = java.lang.Math.abs(r3)
            int r6 = java.lang.Math.abs(r6)
            int r6 = r6 - r0
            int r0 = r0 - r6
            if (r0 != 0) goto L36
            java.math.RoundingMode r5 = java.math.RoundingMode.HALF_UP
            java.math.RoundingMode r5 = java.math.RoundingMode.HALF_EVEN
            goto L42
        L36:
            if (r0 <= 0) goto L42
            goto L3e
        L39:
            if (r5 <= 0) goto L42
            goto L3e
        L3c:
            if (r5 >= 0) goto L42
        L3e:
            int r2 = r2 + r5
            return r2
        L40:
            if (r3 != 0) goto L43
        L42:
            return r2
        L43:
            java.lang.String r5 = "mode was UNNECESSARY, but rounding was necessary"
        L45:
            defpackage.lc0.l(r5)
            return r1
        L49:
            java.lang.String r5 = "/ by zero"
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: com.perfectcorp.thirdparty.com.google.common.math.a.a(int, int):int");
    }
}
