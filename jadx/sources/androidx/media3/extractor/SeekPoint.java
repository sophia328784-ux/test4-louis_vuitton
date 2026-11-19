package androidx.media3.extractor;

import defpackage.o60;

/* JADX INFO: loaded from: classes.dex */
public final class SeekPoint {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SeekPoint f16195c = new SeekPoint(0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16197b;

    public SeekPoint(long j2, long j3) {
        this.f16196a = j2;
        this.f16197b = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SeekPoint.class == obj.getClass()) {
            SeekPoint seekPoint = (SeekPoint) obj;
            if (this.f16196a == seekPoint.f16196a && this.f16197b == seekPoint.f16197b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f16196a) * 31) + ((int) this.f16197b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[timeUs=");
        sb.append(this.f16196a);
        sb.append(", position=");
        return o60.j(this.f16197b, "]", sb);
    }
}
