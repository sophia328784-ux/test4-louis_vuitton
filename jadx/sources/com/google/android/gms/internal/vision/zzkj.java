package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzkj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzkh f31240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzkg f31241b;

    static {
        zzkh zzkhVar = null;
        try {
            zzkhVar = (zzkh) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f31240a = zzkhVar;
        f31241b = new zzkg();
    }
}
