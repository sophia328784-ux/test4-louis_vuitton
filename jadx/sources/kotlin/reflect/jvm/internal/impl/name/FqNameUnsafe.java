package kotlin.reflect.jvm.internal.impl.name;

import defpackage.md;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class FqNameUnsafe {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f73681e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Name f73682f = Name.g("<root>");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f73683a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient FqName f73684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient FqNameUnsafe f73685c;
    public transient Name d;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        Pattern.compile("\\.").getClass();
    }

    public FqNameUnsafe(String str, FqName fqName) {
        str.getClass();
        fqName.getClass();
        this.f73683a = str;
        this.f73684b = fqName;
    }

    public static final List f(FqNameUnsafe fqNameUnsafe) {
        if (fqNameUnsafe.c()) {
            return new ArrayList();
        }
        List listF = f(fqNameUnsafe.e());
        listF.add(fqNameUnsafe.g());
        return listF;
    }

    public final FqNameUnsafe a(Name name) {
        String strB;
        name.getClass();
        if (c()) {
            strB = name.b();
        } else {
            strB = this.f73683a + JwtParser.SEPARATOR_CHAR + name.b();
        }
        strB.getClass();
        return new FqNameUnsafe(strB, this, name);
    }

    public final void b() {
        String str = this.f73683a;
        int length = str.length() - 1;
        boolean z = false;
        while (true) {
            if (length < 0) {
                length = -1;
                break;
            }
            char cCharAt = str.charAt(length);
            if (cCharAt == '.' && !z) {
                break;
            }
            if (cCharAt == '`') {
                z = !z;
            } else if (cCharAt == '\\') {
                length--;
            }
            length--;
        }
        if (length >= 0) {
            this.d = Name.d(str.substring(length + 1));
            this.f73685c = new FqNameUnsafe(str.substring(0, length));
        } else {
            this.d = Name.d(str);
            this.f73685c = FqName.d.f73679a;
        }
    }

    public final boolean c() {
        return this.f73683a.length() == 0;
    }

    public final boolean d() {
        return this.f73684b != null || StringsKt.u(this.f73683a, '<', 0, 6) < 0;
    }

    public final FqNameUnsafe e() {
        FqNameUnsafe fqNameUnsafe = this.f73685c;
        if (fqNameUnsafe != null) {
            return fqNameUnsafe;
        }
        if (c()) {
            md.k("root");
            return null;
        }
        b();
        FqNameUnsafe fqNameUnsafe2 = this.f73685c;
        fqNameUnsafe2.getClass();
        return fqNameUnsafe2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FqNameUnsafe) {
            return Intrinsics.c(this.f73683a, ((FqNameUnsafe) obj).f73683a);
        }
        return false;
    }

    public final Name g() {
        Name name = this.d;
        if (name != null) {
            return name;
        }
        if (c()) {
            md.k("root");
            return null;
        }
        b();
        Name name2 = this.d;
        name2.getClass();
        return name2;
    }

    public final boolean h(Name name) {
        name.getClass();
        if (!c()) {
            String str = this.f73683a;
            int iU = StringsKt.u(str, JwtParser.SEPARATOR_CHAR, 0, 6);
            if (iU == -1) {
                iU = str.length();
            }
            int i2 = iU;
            String strB = name.b();
            strB.getClass();
            if (i2 == strB.length() && StringsKt.D(this.f73683a, 0, false, strB, 0, i2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f73683a.hashCode();
    }

    public final FqName i() {
        FqName fqName = this.f73684b;
        if (fqName != null) {
            return fqName;
        }
        FqName fqName2 = new FqName(this);
        this.f73684b = fqName2;
        return fqName2;
    }

    public final String toString() {
        if (!c()) {
            return this.f73683a;
        }
        String strB = f73682f.b();
        strB.getClass();
        return strB;
    }

    public /* synthetic */ FqNameUnsafe(String str, FqNameUnsafe fqNameUnsafe, Name name, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, fqNameUnsafe, name);
    }

    public FqNameUnsafe(String str) {
        str.getClass();
        this.f73683a = str;
    }

    public FqNameUnsafe(String str, FqNameUnsafe fqNameUnsafe, Name name) {
        this.f73683a = str;
        this.f73685c = fqNameUnsafe;
        this.d = name;
    }
}
