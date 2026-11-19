package kotlin.reflect.jvm.internal.impl.km;

import defpackage.tr;
import io.jsonwebtoken.JwtParser;

/* JADX INFO: loaded from: classes4.dex */
public final class KmVersion {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f72755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f72756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f72757c;

    public KmVersion(int i2, int i3, int i4) {
        this.f72755a = i2;
        this.f72756b = i3;
        this.f72757c = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KmVersion)) {
            return false;
        }
        KmVersion kmVersion = (KmVersion) obj;
        return this.f72755a == kmVersion.f72755a && this.f72756b == kmVersion.f72756b && this.f72757c == kmVersion.f72757c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f72757c) + tr.b(this.f72756b, Integer.hashCode(this.f72755a) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f72755a);
        sb.append(JwtParser.SEPARATOR_CHAR);
        sb.append(this.f72756b);
        sb.append(JwtParser.SEPARATOR_CHAR);
        sb.append(this.f72757c);
        return sb.toString();
    }
}
