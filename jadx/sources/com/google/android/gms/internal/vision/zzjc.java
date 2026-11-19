package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes2.dex */
final class zzjc implements zzkl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzjc f31222a = new zzjc();

    @Override // com.google.android.gms.internal.vision.zzkl
    public final zzki a(Class cls) {
        if (!zzjb.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (zzki) zzjb.i(cls.asSubclass(zzjb.class)).j(3);
        } catch (Exception e2) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e2);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzkl
    public final boolean b(Class cls) {
        return zzjb.class.isAssignableFrom(cls);
    }
}
