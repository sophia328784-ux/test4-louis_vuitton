package kotlin.reflect.jvm.internal.impl.km.jvm;

import defpackage.md;
import io.jsonwebtoken.JwtParser;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmMetadataVersion implements Comparable<JvmMetadataVersion> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f72798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f72799c;
    public final int d;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        new JvmMetadataVersion(MetadataVersion.g.f73568a);
        new JvmMetadataVersion(MetadataVersion.f73584h.f73568a);
    }

    public JvmMetadataVersion(int i2, int i3, int i4) {
        this.f72798b = i2;
        this.f72799c = i3;
        this.d = i4;
        if (i2 < 0) {
            md.n("Major version should be not less than 0");
            throw null;
        }
        if (i3 < 0) {
            md.n("Minor version should be not less than 0");
            throw null;
        }
        if (i4 >= 0) {
            return;
        }
        md.n("Patch version should be not less than 0");
        throw null;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(JvmMetadataVersion jvmMetadataVersion) {
        jvmMetadataVersion.getClass();
        int iD = Intrinsics.d(this.f72798b, jvmMetadataVersion.f72798b);
        if (iD != 0) {
            return iD;
        }
        int iD2 = Intrinsics.d(this.f72799c, jvmMetadataVersion.f72799c);
        return iD2 != 0 ? iD2 : Intrinsics.d(this.d, jvmMetadataVersion.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!JvmMetadataVersion.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        JvmMetadataVersion jvmMetadataVersion = (JvmMetadataVersion) obj;
        return this.f72798b == jvmMetadataVersion.f72798b && this.f72799c == jvmMetadataVersion.f72799c && this.d == jvmMetadataVersion.d;
    }

    public final int hashCode() {
        return (((this.f72798b * 31) + this.f72799c) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f72798b);
        sb.append(JwtParser.SEPARATOR_CHAR);
        sb.append(this.f72799c);
        sb.append(JwtParser.SEPARATOR_CHAR);
        sb.append(this.d);
        return sb.toString();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public JvmMetadataVersion(int[] iArr) {
        this(iArr[0], iArr[1], iArr[2]);
        iArr.getClass();
    }
}
