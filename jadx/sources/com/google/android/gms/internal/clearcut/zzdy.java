package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzdy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzdw f29702a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzdx f29703b;

    static {
        zzdw zzdwVar = null;
        try {
            zzdwVar = (zzdw) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f29702a = zzdwVar;
        f29703b = new zzdx();
    }
}
