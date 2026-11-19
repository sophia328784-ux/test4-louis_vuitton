package okio;

import defpackage.a61;
import defpackage.mt;
import java.io.IOException;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Map;
import java.util.zip.Inflater;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.internal.FixedLengthSource;
import okio.internal.ZipEntry;
import okio.internal.ZipFilesKt;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\fB7\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lokio/ZipFileSystem;", "Lokio/FileSystem;", "Lokio/Path;", "zipPath", "fileSystem", "", "Lokio/internal/ZipEntry;", "entries", "", "comment", "<init>", "(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V", "Companion", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ZipFileSystem extends FileSystem {
    public static final Path g;
    public final Path d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FileSystem f77458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f77459f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/ZipFileSystem$Companion;", "", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        Path.f77432c.getClass();
        g = Path.Companion.a("/");
    }

    public ZipFileSystem(Path path, FileSystem fileSystem, Map<Path, ZipEntry> map, String str) {
        path.getClass();
        fileSystem.getClass();
        map.getClass();
        this.d = path;
        this.f77458e = fileSystem;
        this.f77459f = map;
    }

    @Override // okio.FileSystem
    public final Sink c(Path path) throws IOException {
        path.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public final void d(Path path, Path path2) throws IOException {
        path.getClass();
        path2.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public final void g(Path path) throws IOException {
        path.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public final void h(Path path) throws IOException {
        path.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public final List m(Path path) throws IOException {
        path.getClass();
        Path path2 = g;
        path2.getClass();
        ZipEntry zipEntry = (ZipEntry) this.f77459f.get(okio.internal.Path.b(path2, path, true));
        if (zipEntry == null) {
            a61.n(path, "not a directory: ");
            return null;
        }
        List listY0 = CollectionsKt.y0(zipEntry.q);
        listY0.getClass();
        return listY0;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00cf  */
    @Override // okio.FileSystem
    public final FileMetadata o(Path path) throws Throwable {
        Long lValueOf;
        Long lValueOf2;
        Long l;
        Long lValueOf3;
        Throwable th;
        Throwable th2;
        path.getClass();
        Path path2 = g;
        path2.getClass();
        ZipEntry zipEntryF = (ZipEntry) this.f77459f.get(okio.internal.Path.b(path2, path, true));
        if (zipEntryF == null) {
            return null;
        }
        long j2 = zipEntryF.f77488h;
        if (j2 != -1) {
            FileHandle fileHandleP = this.f77458e.p(this.d);
            try {
                RealBufferedSource realBufferedSource = new RealBufferedSource(fileHandleP.m(j2));
                try {
                    zipEntryF = ZipFilesKt.f(realBufferedSource, zipEntryF);
                    zipEntryF.getClass();
                    try {
                        realBufferedSource.close();
                        th2 = null;
                    } catch (Throwable th3) {
                        th2 = th3;
                    }
                } catch (Throwable th4) {
                    try {
                        realBufferedSource.close();
                    } catch (Throwable th5) {
                        ExceptionsKt.a(th4, th5);
                    }
                    th2 = th4;
                    zipEntryF = null;
                }
                if (th2 != null) {
                    throw th2;
                }
                try {
                    fileHandleP.close();
                    th = null;
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Throwable th7) {
                if (fileHandleP != null) {
                    try {
                        fileHandleP.close();
                    } catch (Throwable th8) {
                        ExceptionsKt.a(th7, th8);
                    }
                }
                th = th7;
                zipEntryF = null;
            }
            if (th != null) {
                throw th;
            }
        }
        boolean z = zipEntryF.f77484b;
        boolean z2 = !z;
        Long lValueOf4 = z ? null : Long.valueOf(zipEntryF.f77487f);
        Long l2 = zipEntryF.m;
        if (l2 != null) {
            lValueOf = Long.valueOf((l2.longValue() / 10000) - 11644473600000L);
        } else {
            Integer num = zipEntryF.p;
            lValueOf = num != null ? Long.valueOf(((long) num.intValue()) * 1000) : null;
        }
        Long l3 = zipEntryF.f77491k;
        if (l3 != null) {
            lValueOf2 = Long.valueOf((l3.longValue() / 10000) - 11644473600000L);
        } else {
            Integer num2 = zipEntryF.n;
            if (num2 != null) {
                lValueOf2 = Long.valueOf(((long) num2.intValue()) * 1000);
            } else {
                int i2 = zipEntryF.f77490j;
                if (i2 != -1) {
                    int i3 = zipEntryF.f77489i;
                    if (i2 == -1) {
                        lValueOf2 = null;
                    } else {
                        int i4 = (i2 >> 11) & 31;
                        int i5 = (i2 >> 5) & 63;
                        int i6 = (i2 & 31) << 1;
                        GregorianCalendar gregorianCalendar = new GregorianCalendar();
                        gregorianCalendar.set(14, 0);
                        gregorianCalendar.set(((i3 >> 9) & CertificateBody.profileType) + 1980, ((i3 >> 5) & 15) - 1, i3 & 31, i4, i5, i6);
                        lValueOf2 = Long.valueOf(gregorianCalendar.getTime().getTime());
                    }
                } else {
                    lValueOf2 = null;
                }
            }
        }
        Long l4 = zipEntryF.l;
        if (l4 == null) {
            Integer num3 = zipEntryF.o;
            if (num3 != null) {
                lValueOf3 = Long.valueOf(((long) num3.intValue()) * 1000);
            } else {
                l = null;
            }
            return new FileMetadata(z2, z, null, lValueOf4, lValueOf, lValueOf2, l, null, 128, null);
        }
        lValueOf3 = Long.valueOf((l4.longValue() / 10000) - 11644473600000L);
        l = lValueOf3;
        return new FileMetadata(z2, z, null, lValueOf4, lValueOf, lValueOf2, l, null, 128, null);
    }

    @Override // okio.FileSystem
    public final FileHandle p(Path path) {
        path.getClass();
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // okio.FileSystem
    public final Sink q(Path path, boolean z) throws IOException {
        path.getClass();
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public final Source r(Path path) throws Throwable {
        Throwable th;
        RealBufferedSource realBufferedSource;
        path.getClass();
        Path path2 = g;
        path2.getClass();
        ZipEntry zipEntry = (ZipEntry) this.f77459f.get(okio.internal.Path.b(path2, path, true));
        if (zipEntry == null) {
            mt.l(path, "no such file: ");
            return null;
        }
        long j2 = zipEntry.f77487f;
        FileHandle fileHandleP = this.f77458e.p(this.d);
        try {
            realBufferedSource = new RealBufferedSource(fileHandleP.m(zipEntry.f77488h));
            try {
                fileHandleP.close();
                th = null;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            if (fileHandleP != null) {
                try {
                    fileHandleP.close();
                } catch (Throwable th4) {
                    ExceptionsKt.a(th3, th4);
                }
            }
            th = th3;
            realBufferedSource = null;
        }
        if (th != null) {
            throw th;
        }
        realBufferedSource.getClass();
        ZipFilesKt.f(realBufferedSource, null);
        return zipEntry.g == 0 ? new FixedLengthSource(realBufferedSource, j2, true) : new FixedLengthSource(new InflaterSource(new FixedLengthSource(realBufferedSource, zipEntry.f77486e, true), new Inflater(true)), j2, false);
    }
}
