package okio.internal;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.Path;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B±\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lokio/internal/ZipEntry;", "", "Lokio/Path;", "canonicalPath", "", "isDirectory", "", "comment", "", "crc", "compressedSize", "size", "", "compressionMethod", "offset", "dosLastModifiedAtDate", "dosLastModifiedAtTime", "ntfsLastModifiedAtFiletime", "ntfsLastAccessedAtFiletime", "ntfsCreatedAtFiletime", "extendedLastModifiedAtSeconds", "extendedLastAccessedAtSeconds", "extendedCreatedAtSeconds", "<init>", "(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ZipEntry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f77483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f77484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f77485c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f77486e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f77487f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f77488h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f77489i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f77490j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Long f77491k;
    public final Long l;
    public final Long m;
    public final Integer n;
    public final Integer o;
    public final Integer p;
    public final ArrayList q;

    public /* synthetic */ ZipEntry(Path path, boolean z, String str, long j2, long j3, long j4, int i2, long j5, int i3, int i4, Long l, Long l2, Long l3, Integer num, Integer num2, Integer num3, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(path, (i5 & 2) != 0 ? false : z, (i5 & 4) != 0 ? "" : str, (i5 & 8) != 0 ? -1L : j2, (i5 & 16) != 0 ? -1L : j3, (i5 & 32) != 0 ? -1L : j4, (i5 & 64) != 0 ? -1 : i2, (i5 & 128) == 0 ? j5 : -1L, (i5 & 256) != 0 ? -1 : i3, (i5 & 512) == 0 ? i4 : -1, (i5 & 1024) != 0 ? null : l, (i5 & 2048) != 0 ? null : l2, (i5 & 4096) != 0 ? null : l3, (i5 & 8192) != 0 ? null : num, (i5 & 16384) != 0 ? null : num2, (i5 & 32768) != 0 ? null : num3);
    }

    public ZipEntry(Path path, boolean z, String str, long j2, long j3, long j4, int i2, long j5, int i3, int i4, Long l, Long l2, Long l3, Integer num, Integer num2, Integer num3) {
        path.getClass();
        str.getClass();
        this.f77483a = path;
        this.f77484b = z;
        this.f77485c = str;
        this.d = j2;
        this.f77486e = j3;
        this.f77487f = j4;
        this.g = i2;
        this.f77488h = j5;
        this.f77489i = i3;
        this.f77490j = i4;
        this.f77491k = l;
        this.l = l2;
        this.m = l3;
        this.n = num;
        this.o = num2;
        this.p = num3;
        this.q = new ArrayList();
    }
}
