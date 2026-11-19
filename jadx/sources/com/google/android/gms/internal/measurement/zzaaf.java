package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaaf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzabn f30301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30302b;

    public zzaaf(zzabn zzabnVar, String str) {
        zzabr.a(zzabnVar, "parser");
        this.f30301a = zzabnVar;
        this.f30302b = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzaaf) {
            zzaaf zzaafVar = (zzaaf) obj;
            if (this.f30301a.equals(zzaafVar.f30301a) && this.f30302b.equals(zzaafVar.f30302b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f30302b.hashCode() ^ this.f30301a.hashCode();
    }
}
