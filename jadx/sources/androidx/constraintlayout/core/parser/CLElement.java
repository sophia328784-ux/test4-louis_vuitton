package androidx.constraintlayout.core.parser;

import defpackage.a61;
import defpackage.o60;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class CLElement implements Cloneable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final char[] f11409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11410c = -1;
    public long d = Long.MAX_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CLContainer f11411e;

    public CLElement(char[] cArr) {
        this.f11409b = cArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CLElement)) {
            return false;
        }
        CLElement cLElement = (CLElement) obj;
        if (this.f11410c == cLElement.f11410c && this.d == cLElement.d && Arrays.equals(this.f11409b, cLElement.f11409b)) {
            return Objects.equals(this.f11411e, cLElement.f11411e);
        }
        return false;
    }

    @Override // 
    public CLElement f() {
        try {
            return (CLElement) super.clone();
        } catch (CloneNotSupportedException unused) {
            a61.h();
            return null;
        }
    }

    public final String h() {
        String str = new String(this.f11409b);
        if (str.length() < 1) {
            return "";
        }
        long j2 = this.d;
        if (j2 != Long.MAX_VALUE) {
            long j3 = this.f11410c;
            if (j2 >= j3) {
                return str.substring((int) j3, ((int) j2) + 1);
            }
        }
        long j4 = this.f11410c;
        return str.substring((int) j4, ((int) j4) + 1);
    }

    public int hashCode() {
        int iHashCode = Arrays.hashCode(this.f11409b) * 31;
        long j2 = this.f11410c;
        int i2 = (iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.d;
        int i3 = (i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        CLContainer cLContainer = this.f11411e;
        return (i3 + (cLContainer != null ? cLContainer.hashCode() : 0)) * 31;
    }

    public float i() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).i();
        }
        return Float.NaN;
    }

    public String toString() {
        long j2 = this.f11410c;
        long j3 = this.d;
        if (j2 > j3 || j3 == Long.MAX_VALUE) {
            StringBuilder sb = new StringBuilder();
            sb.append(getClass());
            sb.append(" (INVALID, ");
            sb.append(this.f11410c);
            sb.append("-");
            return o60.j(this.d, ")", sb);
        }
        return v() + " (" + this.f11410c + " : " + this.d + ") <<" + new String(this.f11409b).substring((int) this.f11410c, ((int) this.d) + 1) + ">>";
    }

    public int u() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).u();
        }
        return 0;
    }

    public final String v() {
        String string = getClass().toString();
        return string.substring(string.lastIndexOf(46) + 1);
    }

    public final void x(long j2) {
        if (this.d != Long.MAX_VALUE) {
            return;
        }
        this.d = j2;
        CLContainer cLContainer = this.f11411e;
        if (cLContainer != null) {
            cLContainer.z(this);
        }
    }
}
