package androidx.media3.extractor;

import defpackage.n00;

/* JADX INFO: loaded from: classes.dex */
public interface SeekMap {
    default boolean b() {
        return false;
    }

    SeekPoints c(long j2);

    boolean e();

    long h();

    public static final class SeekPoints {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SeekPoint f16191a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SeekPoint f16192b;

        public SeekPoints(SeekPoint seekPoint, SeekPoint seekPoint2) {
            seekPoint.getClass();
            this.f16191a = seekPoint;
            seekPoint2.getClass();
            this.f16192b = seekPoint2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && SeekPoints.class == obj.getClass()) {
                SeekPoints seekPoints = (SeekPoints) obj;
                if (this.f16191a.equals(seekPoints.f16191a) && this.f16192b.equals(seekPoints.f16192b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f16192b.hashCode() + (this.f16191a.hashCode() * 31);
        }

        public final String toString() {
            String str;
            StringBuilder sb = new StringBuilder("[");
            SeekPoint seekPoint = this.f16191a;
            sb.append(seekPoint);
            SeekPoint seekPoint2 = this.f16192b;
            if (seekPoint.equals(seekPoint2)) {
                str = "";
            } else {
                str = ", " + seekPoint2;
            }
            return n00.r(str, "]", sb);
        }

        public SeekPoints(SeekPoint seekPoint) {
            this(seekPoint, seekPoint);
        }
    }

    public static class Unseekable implements SeekMap {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f16193a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SeekPoints f16194b;

        public Unseekable(long j2, long j3) {
            this.f16193a = j2;
            this.f16194b = new SeekPoints(j3 == 0 ? SeekPoint.f16195c : new SeekPoint(0L, j3));
        }

        @Override // androidx.media3.extractor.SeekMap
        public final SeekPoints c(long j2) {
            return this.f16194b;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean e() {
            return false;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long h() {
            return this.f16193a;
        }

        public Unseekable(long j2) {
            this(j2, 0L);
        }
    }
}
