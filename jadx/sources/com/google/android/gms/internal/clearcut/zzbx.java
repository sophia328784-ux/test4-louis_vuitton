package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzbx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzbv f29663a = new zzbv();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzbu f29664b;

    static {
        zzbu zzbuVar = null;
        try {
            zzbuVar = (zzbu) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f29664b = zzbuVar;
    }
}
