package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
final class zzdf implements zzdn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public zzdn[] f29685a;

    @Override // com.google.android.gms.internal.clearcut.zzdn
    public final zzdm a(Class cls) {
        for (zzdn zzdnVar : this.f29685a) {
            if (zzdnVar.b(cls)) {
                return zzdnVar.a(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.clearcut.zzdn
    public final boolean b(Class cls) {
        for (zzdn zzdnVar : this.f29685a) {
            if (zzdnVar.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
