package kotlin.reflect.jvm.internal.impl.name;

import defpackage.md;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class FqName {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f73678c = new Companion(null);
    public static final FqName d = new FqName("");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FqNameUnsafe f73679a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient FqName f73680b;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static FqName a(Name name) {
            name.getClass();
            FqNameUnsafe.f73681e.getClass();
            String strB = name.b();
            strB.getClass();
            return new FqName(new FqNameUnsafe(strB, FqName.d.f73679a, name, null));
        }
    }

    public FqName(String str) {
        str.getClass();
        this.f73679a = new FqNameUnsafe(str, this);
    }

    public final FqName a(Name name) {
        name.getClass();
        return new FqName(this.f73679a.a(name), this);
    }

    public final FqName b() {
        FqName fqName = this.f73680b;
        if (fqName != null) {
            return fqName;
        }
        FqNameUnsafe fqNameUnsafe = this.f73679a;
        if (fqNameUnsafe.c()) {
            md.k("root");
            return null;
        }
        FqName fqName2 = new FqName(fqNameUnsafe.e());
        this.f73680b = fqName2;
        return fqName2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FqName) {
            return Intrinsics.c(this.f73679a, ((FqName) obj).f73679a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f73679a.f73683a.hashCode();
    }

    public final String toString() {
        return this.f73679a.toString();
    }

    public FqName(FqNameUnsafe fqNameUnsafe) {
        fqNameUnsafe.getClass();
        this.f73679a = fqNameUnsafe;
    }

    public FqName(FqNameUnsafe fqNameUnsafe, FqName fqName) {
        this.f73679a = fqNameUnsafe;
        this.f73680b = fqName;
    }
}
