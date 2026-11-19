package com.google.android.gms.internal.fido;

import defpackage.fc;
import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class zzbs implements Serializable, zzbp {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f29840b;

    public zzbs(Object obj) {
        this.f29840b = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzbs) {
            return zzbk.a(this.f29840b, ((zzbs) obj).f29840b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29840b});
    }

    public final String toString() {
        return fc.h("Suppliers.ofInstance(", this.f29840b.toString(), ")");
    }
}
