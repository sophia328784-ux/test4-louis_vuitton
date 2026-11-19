package kotlin;

import io.jsonwebtoken.JwtParser;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\b\n\u0002\b\t\b\u0007\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\b¨\u0006\u000b"}, d2 = {"Lkotlin/KotlinVersion;", "", "", "major", "minor", "patch", "<init>", "(III)V", "(II)V", "f", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class KotlinVersion implements Comparable<KotlinVersion> {
    public static final KotlinVersion g = new KotlinVersion(2, 4, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f71701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f71702c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f71703e;

    public KotlinVersion(int i2, int i3, int i4) {
        this.f71701b = i2;
        this.f71702c = i3;
        this.d = i4;
        if (i2 >= 0 && i2 < 256 && i3 >= 0 && i3 < 256 && i4 >= 0 && i4 < 256) {
            this.f71703e = (i2 << 16) + (i3 << 8) + i4;
            return;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i2 + JwtParser.SEPARATOR_CHAR + i3 + JwtParser.SEPARATOR_CHAR + i4).toString());
    }

    @Override // java.lang.Comparable
    public final int compareTo(KotlinVersion kotlinVersion) {
        KotlinVersion kotlinVersion2 = kotlinVersion;
        kotlinVersion2.getClass();
        return this.f71703e - kotlinVersion2.f71703e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        KotlinVersion kotlinVersion = obj instanceof KotlinVersion ? (KotlinVersion) obj : null;
        return kotlinVersion != null && this.f71703e == kotlinVersion.f71703e;
    }

    /* JADX INFO: renamed from: hashCode, reason: from getter */
    public final int getF71703e() {
        return this.f71703e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f71701b);
        sb.append(JwtParser.SEPARATOR_CHAR);
        sb.append(this.f71702c);
        sb.append(JwtParser.SEPARATOR_CHAR);
        sb.append(this.d);
        return sb.toString();
    }

    public KotlinVersion(int i2, int i3) {
        this(i2, i3, 0);
    }
}
