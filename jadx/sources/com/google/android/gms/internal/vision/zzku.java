package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzku {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzks f31254a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzkv f31255b;

    static {
        zzks zzksVar = null;
        try {
            zzksVar = (zzks) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f31254a = zzksVar;
        f31255b = new zzkv();
    }
}
