package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes2.dex */
final class zzaz extends zzbl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzaz f29832b = new zzaz();

    @Override // com.google.android.gms.internal.fido.zzbl
    public final Object a() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.android.gms.internal.fido.zzbl
    public final boolean b() {
        return false;
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
