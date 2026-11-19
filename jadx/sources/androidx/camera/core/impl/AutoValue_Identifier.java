package androidx.camera.core.impl;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_Identifier extends Identifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2189a;

    public AutoValue_Identifier(Object obj) {
        this.f2189a = obj;
    }

    @Override // androidx.camera.core.impl.Identifier
    public final Object b() {
        return this.f2189a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Identifier) {
            return this.f2189a.equals(((Identifier) obj).b());
        }
        return false;
    }

    public final int hashCode() {
        return this.f2189a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return defpackage.a.n(new StringBuilder("Identifier{value="), this.f2189a, "}");
    }
}
