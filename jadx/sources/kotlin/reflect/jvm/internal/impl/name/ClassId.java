package kotlin.reflect.jvm.internal.impl.name;

import defpackage.d21;
import io.jsonwebtoken.JwtParser;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class ClassId {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FqName f73675a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FqName f73676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f73677c;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static ClassId a(String str, boolean z) {
            String strJ;
            str.getClass();
            int iU = StringsKt.u(str, '`', 0, 6);
            if (iU == -1) {
                iU = str.length();
            }
            int iY = StringsKt.y(iU, 4, str, "/");
            String str2 = "";
            if (iY == -1) {
                strJ = StringsKt.J(str, "`", "");
            } else {
                String strReplace = str.substring(0, iY).replace('/', JwtParser.SEPARATOR_CHAR);
                strReplace.getClass();
                strJ = StringsKt.J(str.substring(iY + 1), "`", "");
                str2 = strReplace;
            }
            return new ClassId(new FqName(str2), new FqName(strJ), z);
        }

        public static ClassId b(FqName fqName) {
            fqName.getClass();
            return new ClassId(fqName.b(), fqName.f73679a.g());
        }
    }

    public ClassId(FqName fqName, FqName fqName2, boolean z) {
        fqName.getClass();
        fqName2.getClass();
        this.f73675a = fqName;
        this.f73676b = fqName2;
        this.f73677c = z;
        fqName2.f73679a.c();
    }

    public static final String c(FqName fqName) {
        String str = fqName.f73679a.f73683a;
        return StringsKt.l(str, '/') ? d21.d('`', "`", str) : str;
    }

    public final FqName a() {
        FqName fqName = this.f73675a;
        boolean zC = fqName.f73679a.c();
        FqName fqName2 = this.f73676b;
        if (zC) {
            return fqName2;
        }
        return new FqName(fqName.f73679a.f73683a + JwtParser.SEPARATOR_CHAR + fqName2.f73679a.f73683a);
    }

    public final String b() {
        FqName fqName = this.f73675a;
        boolean zC = fqName.f73679a.c();
        FqName fqName2 = this.f73676b;
        if (zC) {
            return c(fqName2);
        }
        return StringsKt.I(fqName.f73679a.f73683a, JwtParser.SEPARATOR_CHAR, '/') + "/" + c(fqName2);
    }

    public final ClassId d(Name name) {
        name.getClass();
        return new ClassId(this.f73675a, this.f73676b.a(name), this.f73677c);
    }

    public final ClassId e() {
        FqName fqNameB = this.f73676b.b();
        if (fqNameB.f73679a.c()) {
            return null;
        }
        return new ClassId(this.f73675a, fqNameB, this.f73677c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClassId)) {
            return false;
        }
        ClassId classId = (ClassId) obj;
        return Intrinsics.c(this.f73675a, classId.f73675a) && Intrinsics.c(this.f73676b, classId.f73676b) && this.f73677c == classId.f73677c;
    }

    public final Name f() {
        return this.f73676b.f73679a.g();
    }

    public final boolean g() {
        return !this.f73676b.b().f73679a.c();
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f73677c) + ((this.f73676b.hashCode() + (this.f73675a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        boolean zC = this.f73675a.f73679a.c();
        String strB = b();
        return zC ? "/".concat(strB) : strB;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClassId(FqName fqName, Name name) {
        this(fqName, FqName.Companion.a(name), false);
        fqName.getClass();
        name.getClass();
        FqName.f73678c.getClass();
    }
}
