package com.google.android.gms.internal.fido;

import java.util.Comparator;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzgl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Comparator f29894a;

    static {
        Comparator comparator;
        try {
            Object[] enumConstants = Class.forName(zzgl.class.getName().concat("$UnsafeComparator")).getEnumConstants();
            Objects.requireNonNull(enumConstants);
            comparator = (Comparator) enumConstants[0];
        } catch (Throwable unused) {
            comparator = zzgk.zza;
        }
        f29894a = comparator;
    }
}
