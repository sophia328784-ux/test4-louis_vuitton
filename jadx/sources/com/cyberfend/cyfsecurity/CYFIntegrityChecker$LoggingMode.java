package com.cyberfend.cyfsecurity;

import ZjTIAZ.CNATAC;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes2.dex */
public final class CYFIntegrityChecker$LoggingMode {
    public static final CYFIntegrityChecker$LoggingMode CONSOLE;
    public static final CYFIntegrityChecker$LoggingMode EXCEPTION;
    private static final /* synthetic */ CYFIntegrityChecker$LoggingMode[] GnaWzB;
    public static final CYFIntegrityChecker$LoggingMode NONE;
    public static int _GM = 3907;

    static {
        CYFIntegrityChecker$LoggingMode cYFIntegrityChecker$LoggingMode = new CYFIntegrityChecker$LoggingMode(CNATAC.a("@j[v"), 0);
        NONE = cYFIntegrityChecker$LoggingMode;
        CONSOLE = new CYFIntegrityChecker$LoggingMode(CNATAC.a("Mj[`|~j"), 1);
        EXCEPTION = new CYFIntegrityChecker$LoggingMode(CNATAC.a("K}Vvcffo_"), 2);
        if (_GM <= 3906) {
            while (true) {
                int i2 = _GM;
                int i3 = i2 + 13;
                if (i3 == 48) {
                    _GM = (i2 >> 114) + i2;
                    break;
                } else if (i3 == 182) {
                    while (true) {
                        _GM = (_GM ^ 3077) + i2;
                    }
                } else if (i3 == 326) {
                    _GM = (i2 ^ 4306) * 61;
                }
            }
        }
        GnaWzB = new CYFIntegrityChecker$LoggingMode[]{cYFIntegrityChecker$LoggingMode, CONSOLE, EXCEPTION};
    }

    public static CYFIntegrityChecker$LoggingMode valueOf(String str) {
        return (CYFIntegrityChecker$LoggingMode) Enum.valueOf(CYFIntegrityChecker$LoggingMode.class, str);
    }

    public static CYFIntegrityChecker$LoggingMode[] values() {
        return (CYFIntegrityChecker$LoggingMode[]) GnaWzB.clone();
    }
}
