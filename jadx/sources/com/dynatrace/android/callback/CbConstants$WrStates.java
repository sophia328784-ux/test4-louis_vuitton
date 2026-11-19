package com.dynatrace.android.callback;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
final class CbConstants$WrStates {
    private static final /* synthetic */ CbConstants$WrStates[] $VALUES;
    public static final CbConstants$WrStates POST_EXEC_ERR;
    public static final CbConstants$WrStates POST_EXEC_FINALIZE;
    public static final CbConstants$WrStates POST_EXEC_OK;
    public static final CbConstants$WrStates PRE_EXEC;

    static {
        CbConstants$WrStates cbConstants$WrStates = new CbConstants$WrStates("PRE_EXEC", 0);
        PRE_EXEC = cbConstants$WrStates;
        CbConstants$WrStates cbConstants$WrStates2 = new CbConstants$WrStates("POST_EXEC_OK", 1);
        POST_EXEC_OK = cbConstants$WrStates2;
        CbConstants$WrStates cbConstants$WrStates3 = new CbConstants$WrStates("POST_EXEC_ERR", 2);
        POST_EXEC_ERR = cbConstants$WrStates3;
        CbConstants$WrStates cbConstants$WrStates4 = new CbConstants$WrStates("POST_EXEC_FINALIZE", 3);
        POST_EXEC_FINALIZE = cbConstants$WrStates4;
        $VALUES = new CbConstants$WrStates[]{cbConstants$WrStates, cbConstants$WrStates2, cbConstants$WrStates3, cbConstants$WrStates4};
    }

    public static CbConstants$WrStates valueOf(String str) {
        return (CbConstants$WrStates) Enum.valueOf(CbConstants$WrStates.class, str);
    }

    public static CbConstants$WrStates[] values() {
        return (CbConstants$WrStates[]) $VALUES.clone();
    }
}
