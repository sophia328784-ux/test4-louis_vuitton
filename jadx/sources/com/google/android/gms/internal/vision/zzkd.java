package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes2.dex */
final class zzkd implements zzkl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public zzkl[] f31237a;

    @Override // com.google.android.gms.internal.vision.zzkl
    public final zzki a(Class cls) {
        for (zzkl zzklVar : this.f31237a) {
            if (zzklVar.b(cls)) {
                return zzklVar.a(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.vision.zzkl
    public final boolean b(Class cls) {
        for (zzkl zzklVar : this.f31237a) {
            if (zzklVar.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
