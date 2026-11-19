package com.perfectcorp.perfectlib;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class LookType {
    public static final LookType JEWELRY;
    public static final LookType MAKEUP;
    public static final LookType NAIL;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ LookType[] f39674a;

    static {
        LookType lookType = new LookType("MAKEUP", 0);
        MAKEUP = lookType;
        LookType lookType2 = new LookType("NAIL", 1);
        NAIL = lookType2;
        LookType lookType3 = new LookType("JEWELRY", 2);
        JEWELRY = lookType3;
        f39674a = new LookType[]{lookType, lookType2, lookType3};
    }

    public static LookType valueOf(String str) {
        return (LookType) Enum.valueOf(LookType.class, str);
    }

    public static LookType[] values() {
        return (LookType[]) f39674a.clone();
    }
}
