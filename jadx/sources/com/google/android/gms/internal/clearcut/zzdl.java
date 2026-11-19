package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzdl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzdj f29688a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzdk f29689b;

    static {
        zzdj zzdjVar = null;
        try {
            zzdjVar = (zzdj) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f29688a = zzdjVar;
        f29689b = new zzdk();
    }
}
