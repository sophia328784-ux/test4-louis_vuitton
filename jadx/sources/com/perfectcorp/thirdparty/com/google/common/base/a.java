package com.perfectcorp.thirdparty.com.google.common.base;

/* JADX INFO: loaded from: classes3.dex */
final class a<T> extends Optional<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f42084b = new a();

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Optional
    public final Object c() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Optional
    public final boolean d() {
        return false;
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Optional
    public final Object f(Object obj) {
        Preconditions.d(obj, "use Optional.orNull() instead of Optional.or(null)");
        return obj;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Optional
    public final Object g() {
        return null;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
