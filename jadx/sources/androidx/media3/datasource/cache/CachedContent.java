package androidx.media3.datasource.cache;

import com.google.common.base.Preconditions;
import defpackage.fc;
import java.util.ArrayList;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
final class CachedContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f14491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TreeSet f14492c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DefaultContentMetadata f14493e;

    public static final class Range {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f14494a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f14495b;

        public Range(long j2, long j3) {
            this.f14494a = j2;
            this.f14495b = j3;
        }
    }

    public CachedContent(int i2, String str, DefaultContentMetadata defaultContentMetadata) {
        this.f14490a = i2;
        this.f14491b = str;
        this.f14493e = defaultContentMetadata;
        this.f14492c = new TreeSet();
        this.d = new ArrayList();
    }

    public final long a(long j2, long j3) {
        Preconditions.g(j2 >= 0);
        Preconditions.g(j3 >= 0);
        SimpleCacheSpan simpleCacheSpanB = b(j2, j3);
        long j4 = simpleCacheSpanB.d;
        if (!simpleCacheSpanB.f14481e) {
            if (j4 == -1) {
                j4 = Long.MAX_VALUE;
            }
            return -Math.min(j4, j3);
        }
        long j5 = j2 + j3;
        long j6 = j5 >= 0 ? j5 : Long.MAX_VALUE;
        long jMax = simpleCacheSpanB.f14480c + j4;
        if (jMax < j6) {
            for (SimpleCacheSpan simpleCacheSpan : this.f14492c.tailSet(simpleCacheSpanB, false)) {
                long j7 = simpleCacheSpan.f14480c;
                if (j7 > jMax) {
                    break;
                }
                jMax = Math.max(jMax, j7 + simpleCacheSpan.d);
                if (jMax >= j6) {
                    break;
                }
            }
        }
        return Math.min(jMax - j2, j3);
    }

    public final SimpleCacheSpan b(long j2, long j3) {
        long jMin = j3;
        SimpleCacheSpan simpleCacheSpan = new SimpleCacheSpan(this.f14491b, j2, -1L, -9223372036854775807L, null);
        TreeSet treeSet = this.f14492c;
        SimpleCacheSpan simpleCacheSpan2 = (SimpleCacheSpan) treeSet.floor(simpleCacheSpan);
        if (simpleCacheSpan2 != null && simpleCacheSpan2.f14480c + simpleCacheSpan2.d > j2) {
            return simpleCacheSpan2;
        }
        SimpleCacheSpan simpleCacheSpan3 = (SimpleCacheSpan) treeSet.ceiling(simpleCacheSpan);
        if (simpleCacheSpan3 != null) {
            long j4 = simpleCacheSpan3.f14480c - j2;
            jMin = jMin == -1 ? j4 : Math.min(j4, jMin);
        }
        return new SimpleCacheSpan(this.f14491b, j2, jMin, -9223372036854775807L, null);
    }

    public final boolean c(long j2, long j3) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.d;
            if (i2 >= arrayList.size()) {
                return false;
            }
            Range range = (Range) arrayList.get(i2);
            long j4 = range.f14494a;
            long j5 = range.f14495b;
            if (j5 == -1) {
                if (j2 >= j4) {
                    return true;
                }
            } else if (j3 != -1 && j4 <= j2 && j2 + j3 <= j4 + j5) {
                return true;
            }
            i2++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && CachedContent.class == obj.getClass()) {
            CachedContent cachedContent = (CachedContent) obj;
            if (this.f14490a == cachedContent.f14490a && this.f14491b.equals(cachedContent.f14491b) && this.f14492c.equals(cachedContent.f14492c) && this.f14493e.equals(cachedContent.f14493e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f14493e.hashCode() + fc.b(this.f14490a * 31, 31, this.f14491b);
    }

    public CachedContent(int i2, String str) {
        this(i2, str, DefaultContentMetadata.f14512c);
    }
}
