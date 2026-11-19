package org.bouncycastle.pqc.legacy.crypto.qtesla;

import defpackage.md;
import defpackage.pq0;

/* JADX INFO: loaded from: classes5.dex */
public class QTESLASecurityCategory {
    public static final int PROVABLY_SECURE_I = 5;
    public static final int PROVABLY_SECURE_III = 6;

    private QTESLASecurityCategory() {
    }

    public static String getName(int i2) {
        if (i2 == 5) {
            return "qTESLA-p-I";
        }
        if (i2 == 6) {
            return "qTESLA-p-III";
        }
        md.n(pq0.k(i2, "unknown security category: "));
        return null;
    }

    public static int getPrivateSize(int i2) {
        if (i2 == 5) {
            return 5224;
        }
        if (i2 == 6) {
            return 12392;
        }
        md.n(pq0.k(i2, "unknown security category: "));
        return 0;
    }

    public static int getPublicSize(int i2) {
        if (i2 == 5) {
            return 14880;
        }
        if (i2 == 6) {
            return 38432;
        }
        md.n(pq0.k(i2, "unknown security category: "));
        return 0;
    }

    public static int getSignatureSize(int i2) {
        if (i2 == 5) {
            return 2592;
        }
        if (i2 == 6) {
            return 5664;
        }
        md.n(pq0.k(i2, "unknown security category: "));
        return 0;
    }

    public static void validate(int i2) {
        if (i2 == 5 || i2 == 6) {
            return;
        }
        md.n(pq0.k(i2, "unknown security category: "));
    }
}
