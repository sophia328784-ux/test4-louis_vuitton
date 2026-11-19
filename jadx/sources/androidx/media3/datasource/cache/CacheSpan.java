package androidx.media3.datasource.cache;

import defpackage.o60;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class CacheSpan implements Comparable<CacheSpan> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f14479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f14480c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f14481e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final File f14482f;
    public final long g;

    public CacheSpan(String str, long j2, long j3, long j4, File file) {
        this.f14479b = str;
        this.f14480c = j2;
        this.d = j3;
        this.f14481e = file != null;
        this.f14482f = file;
        this.g = j4;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(CacheSpan cacheSpan) {
        String str = cacheSpan.f14479b;
        String str2 = this.f14479b;
        if (!str2.equals(str)) {
            return str2.compareTo(cacheSpan.f14479b);
        }
        long j2 = this.f14480c - cacheSpan.f14480c;
        if (j2 == 0) {
            return 0;
        }
        return j2 < 0 ? -1 : 1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        sb.append(this.f14480c);
        sb.append(", ");
        return o60.j(this.d, "]", sb);
    }

    public CacheSpan(String str, long j2, long j3) {
        this(str, j2, j3, -9223372036854775807L, null);
    }
}
