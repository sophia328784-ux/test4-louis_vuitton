package androidx.media3.extractor.metadata.mp4;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.pq0;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class SlowMotionData implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f16402a;

    public static final class Segment {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f16403a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16404b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16405c;

        public Segment(long j2, long j3, int i2) {
            Preconditions.g(j2 < j3);
            this.f16403a = j2;
            this.f16404b = j3;
            this.f16405c = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Segment.class == obj.getClass()) {
                Segment segment = (Segment) obj;
                if (this.f16403a == segment.f16403a && this.f16404b == segment.f16404b && this.f16405c == segment.f16405c) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Long.valueOf(this.f16403a), Long.valueOf(this.f16404b), Integer.valueOf(this.f16405c));
        }

        public final String toString() {
            String str = Util.f14242a;
            Locale locale = Locale.US;
            StringBuilder sbQ = pq0.q(this.f16403a, "Segment: startTimeMs=", ", endTimeMs=");
            sbQ.append(this.f16404b);
            sbQ.append(", speedDivisor=");
            sbQ.append(this.f16405c);
            return sbQ.toString();
        }
    }

    public SlowMotionData(List<Segment> list) {
        this.f16402a = list;
        boolean z = false;
        if (!list.isEmpty()) {
            long j2 = list.get(0).f16404b;
            for (int i2 = 1; i2 < list.size(); i2++) {
                if (list.get(i2).f16403a < j2) {
                    z = true;
                    break;
                }
                j2 = list.get(i2).f16404b;
            }
        }
        Preconditions.g(!z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SlowMotionData.class != obj.getClass()) {
            return false;
        }
        return this.f16402a.equals(((SlowMotionData) obj).f16402a);
    }

    public final int hashCode() {
        return this.f16402a.hashCode();
    }

    public final String toString() {
        return "SlowMotion: segments=" + this.f16402a;
    }
}
