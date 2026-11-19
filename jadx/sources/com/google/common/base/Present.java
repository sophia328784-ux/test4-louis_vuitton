package com.google.common.base;

/* JADX INFO: loaded from: classes2.dex */
final class Present<T> extends Optional<T> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f33486b;

    public Present(Object obj) {
        this.f33486b = obj;
    }

    @Override // com.google.common.base.Optional
    public final Object b() {
        return this.f33486b;
    }

    @Override // com.google.common.base.Optional
    public final boolean c() {
        return true;
    }

    @Override // com.google.common.base.Optional
    public final Object e(Supplier supplier) {
        return this.f33486b;
    }

    @Override // com.google.common.base.Optional
    public final boolean equals(Object obj) {
        if (obj instanceof Present) {
            return this.f33486b.equals(((Present) obj).f33486b);
        }
        return false;
    }

    @Override // com.google.common.base.Optional
    public final Object f() {
        return this.f33486b;
    }

    @Override // com.google.common.base.Optional
    public final int hashCode() {
        return this.f33486b.hashCode() + 1502476572;
    }

    public final String toString() {
        return defpackage.a.n(new StringBuilder("Optional.of("), this.f33486b, ")");
    }
}
