package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes2.dex */
final class zzca extends zzcc {
    public final transient zzcc d;

    public zzca(zzcc zzccVar) {
        this.d = zzccVar;
    }

    @Override // com.google.android.gms.internal.fido.zzcc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.d.contains(obj);
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzcc zzccVar = this.d;
        zzbm.a(i2, zzccVar.size());
        return zzccVar.get((zzccVar.size() - 1) - i2);
    }

    @Override // com.google.android.gms.internal.fido.zzcc, java.util.List
    public final int indexOf(Object obj) {
        zzcc zzccVar = this.d;
        int iLastIndexOf = zzccVar.lastIndexOf(obj);
        if (iLastIndexOf >= 0) {
            return (zzccVar.size() - 1) - iLastIndexOf;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.fido.zzcc, java.util.List
    public final int lastIndexOf(Object obj) {
        zzcc zzccVar = this.d;
        int iIndexOf = zzccVar.indexOf(obj);
        if (iIndexOf >= 0) {
            return (zzccVar.size() - 1) - iIndexOf;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.fido.zzcc
    public final zzcc n() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.fido.zzcc, java.util.List
    /* JADX INFO: renamed from: o */
    public final zzcc subList(int i2, int i3) {
        zzcc zzccVar = this.d;
        zzbm.b(i2, i3, zzccVar.size());
        return zzccVar.subList(zzccVar.size() - i3, zzccVar.size() - i2).n();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d.size();
    }
}
