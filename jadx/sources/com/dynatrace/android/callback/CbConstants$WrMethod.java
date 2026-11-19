package com.dynatrace.android.callback;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
final class CbConstants$WrMethod {
    private static final /* synthetic */ CbConstants$WrMethod[] $VALUES;
    public static final CbConstants$WrMethod enqueue;
    public static final CbConstants$WrMethod execute;
    public static final CbConstants$WrMethod getInputStream;
    public static final CbConstants$WrMethod getOutputStream;
    public static final CbConstants$WrMethod getResponseCode;

    static {
        CbConstants$WrMethod cbConstants$WrMethod = new CbConstants$WrMethod("getInputStream", 0);
        getInputStream = cbConstants$WrMethod;
        CbConstants$WrMethod cbConstants$WrMethod2 = new CbConstants$WrMethod("getOutputStream", 1);
        getOutputStream = cbConstants$WrMethod2;
        CbConstants$WrMethod cbConstants$WrMethod3 = new CbConstants$WrMethod("getResponseCode", 2);
        getResponseCode = cbConstants$WrMethod3;
        CbConstants$WrMethod cbConstants$WrMethod4 = new CbConstants$WrMethod("execute", 3);
        execute = cbConstants$WrMethod4;
        CbConstants$WrMethod cbConstants$WrMethod5 = new CbConstants$WrMethod("enqueue", 4);
        enqueue = cbConstants$WrMethod5;
        $VALUES = new CbConstants$WrMethod[]{cbConstants$WrMethod, cbConstants$WrMethod2, cbConstants$WrMethod3, cbConstants$WrMethod4, cbConstants$WrMethod5};
    }

    public static CbConstants$WrMethod valueOf(String str) {
        return (CbConstants$WrMethod) Enum.valueOf(CbConstants$WrMethod.class, str);
    }

    public static CbConstants$WrMethod[] values() {
        return (CbConstants$WrMethod[]) $VALUES.clone();
    }
}
