package com.google.ar.core;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final x f33446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x f33447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final x f33448c;
    private static final /* synthetic */ x[] d;

    static {
        x xVar = new x("ACCEPTED", 0);
        f33446a = xVar;
        x xVar2 = new x("CANCELLED", 1);
        f33447b = xVar2;
        x xVar3 = new x("COMPLETED", 2);
        f33448c = xVar3;
        d = new x[]{xVar, xVar2, xVar3};
    }

    public static x[] values() {
        return (x[]) d.clone();
    }
}
