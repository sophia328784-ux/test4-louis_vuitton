package com.perfectcorp.thirdparty.com.google.common.base;

/* JADX INFO: loaded from: classes3.dex */
final class l<T> extends Optional<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f42099b;

    public l(Object obj) {
        this.f42099b = obj;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Optional
    public final Object c() {
        return this.f42099b;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Optional
    public final boolean d() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof l) {
            return this.f42099b.equals(((l) obj).f42099b);
        }
        return false;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Optional
    public final Object f(Object obj) {
        Preconditions.d(obj, "use Optional.orNull() instead of Optional.or(null)");
        return this.f42099b;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Optional
    public final Object g() {
        return this.f42099b;
    }

    public final int hashCode() {
        return this.f42099b.hashCode() + 1502476572;
    }

    public final String toString() {
        return defpackage.a.n(new StringBuilder("Optional.of("), this.f42099b, ")");
    }
}
