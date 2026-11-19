package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
final class zzcf implements zzdn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzcf f29673a = new zzcf();

    @Override // com.google.android.gms.internal.clearcut.zzdn
    public final zzdm a(Class cls) {
        if (!zzcg.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzdm) zzcg.h(cls.asSubclass(zzcg.class)).e(3);
        } catch (Exception e2) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e2);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzdn
    public final boolean b(Class cls) {
        return zzcg.class.isAssignableFrom(cls);
    }
}
