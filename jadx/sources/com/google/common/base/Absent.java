package com.google.common.base;

/* JADX INFO: loaded from: classes2.dex */
final class Absent<T> extends Optional<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Absent f33457b = new Absent();
    private static final long serialVersionUID = 0;

    private Object readResolve() {
        return f33457b;
    }

    @Override // com.google.common.base.Optional
    public final Object b() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.common.base.Optional
    public final boolean c() {
        return false;
    }

    @Override // com.google.common.base.Optional
    public final Object e(Supplier supplier) {
        return supplier.get();
    }

    @Override // com.google.common.base.Optional
    public final boolean equals(Object obj) {
        return this == obj;
    }

    @Override // com.google.common.base.Optional
    public final Object f() {
        return null;
    }

    @Override // com.google.common.base.Optional
    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
