package com.cyberfend.cyfsecurity;

import ZjTIAZ.CNATAC;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
public final class CYFIntegrityChecker$DebugMode {
    public static final CYFIntegrityChecker$DebugMode CCA;
    public static final CYFIntegrityChecker$DebugMode DEFAULT;
    private static final /* synthetic */ CYFIntegrityChecker$DebugMode[] GnaWzB;
    public static final CYFIntegrityChecker$DebugMode NONE;
    public static final CYFIntegrityChecker$DebugMode POW_WITH_CCA;
    public static int gNk = 1273;
    public static int lbh = 6481;

    static {
        int i2;
        CYFIntegrityChecker$DebugMode cYFIntegrityChecker$DebugMode = new CYFIntegrityChecker$DebugMode(CNATAC.a("@j[v"), 0);
        NONE = cYFIntegrityChecker$DebugMode;
        CYFIntegrityChecker$DebugMode cYFIntegrityChecker$DebugMode2 = new CYFIntegrityChecker$DebugMode(CNATAC.a("J`Srf~{"), 1);
        DEFAULT = cYFIntegrityChecker$DebugMode2;
        CCA = new CYFIntegrityChecker$DebugMode(CNATAC.a("MfT"), 2);
        POW_WITH_CCA = new CYFIntegrityChecker$DebugMode(CNATAC.a("^jBld{{hNrv}"), 3);
        if (lbh <= 6480) {
            do {
                i2 = lbh;
            } while (i2 + 13 != 73);
            lbh = ((i2 * 99) >> 77) * 96;
        }
        GnaWzB = new CYFIntegrityChecker$DebugMode[]{cYFIntegrityChecker$DebugMode, cYFIntegrityChecker$DebugMode2, CCA, POW_WITH_CCA};
    }

    public static CYFIntegrityChecker$DebugMode valueOf(String str) {
        return (CYFIntegrityChecker$DebugMode) Enum.valueOf(CYFIntegrityChecker$DebugMode.class, str);
    }

    public static CYFIntegrityChecker$DebugMode[] values() {
        return (CYFIntegrityChecker$DebugMode[]) GnaWzB.clone();
    }
}
