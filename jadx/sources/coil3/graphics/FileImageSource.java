package coil3.graphics;

import coil3.util.UtilsKt;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\n\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcoil3/decode/FileImageSource;", "Lcoil3/decode/ImageSource;", "Lokio/Path;", "file", "Lokio/FileSystem;", "fileSystem", "", "diskCacheKey", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "closeable", "Lcoil3/decode/ImageSource$Metadata;", "metadata", "<init>", "(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Ljava/lang/AutoCloseable;Lcoil3/decode/ImageSource$Metadata;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class FileImageSource implements ImageSource {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f21365b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FileSystem f21366c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AutoCloseable f21367e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImageSource.Metadata f21368f;
    public final Object g = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f21369h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public RealBufferedSource f21370i;

    public FileImageSource(Path path, FileSystem fileSystem, String str, AutoCloseable autoCloseable, ImageSource.Metadata metadata) {
        this.f21365b = path;
        this.f21366c = fileSystem;
        this.d = str;
        this.f21367e = autoCloseable;
        this.f21368f = metadata;
    }

    @Override // coil3.graphics.ImageSource
    public final Path E1() {
        Path path;
        synchronized (this.g) {
            if (this.f21369h) {
                throw new IllegalStateException("closed");
            }
            path = this.f21365b;
        }
        return path;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0016 A[Catch: all -> 0x0020, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0004, B:7:0x000a, B:8:0x000c, B:11:0x0011, B:12:0x0012, B:14:0x0016, B:15:0x0018, B:18:0x001d), top: B:26:0x0004, inners: #2, #3, #5, #4 }] */
    @Override // java.lang.AutoCloseable
    public final void close() {
        AutoCloseable autoCloseable;
        synchronized (this.g) {
            this.f21369h = true;
            RealBufferedSource realBufferedSource = this.f21370i;
            if (realBufferedSource != null) {
                Function1 function1 = UtilsKt.f21734a;
                try {
                    realBufferedSource.close();
                } catch (RuntimeException e2) {
                    throw e2;
                } catch (Exception unused) {
                }
                autoCloseable = this.f21367e;
                if (autoCloseable != null) {
                    Function1 function2 = UtilsKt.f21734a;
                    try {
                        d21.x(autoCloseable);
                    } catch (RuntimeException e3) {
                        throw e3;
                    } catch (Exception unused2) {
                    }
                }
            } else {
                autoCloseable = this.f21367e;
                if (autoCloseable != null) {
                    Function1 function3 = UtilsKt.f21734a;
                    d21.x(autoCloseable);
                }
            }
            throw th;
        }
    }

    @Override // coil3.graphics.ImageSource
    /* JADX INFO: renamed from: getFileSystem, reason: from getter */
    public final FileSystem getF21366c() {
        return this.f21366c;
    }

    @Override // coil3.graphics.ImageSource
    /* JADX INFO: renamed from: getMetadata, reason: from getter */
    public final ImageSource.Metadata getF21368f() {
        return this.f21368f;
    }

    @Override // coil3.graphics.ImageSource
    public final BufferedSource source() {
        synchronized (this.g) {
            if (this.f21369h) {
                throw new IllegalStateException("closed");
            }
            RealBufferedSource realBufferedSource = this.f21370i;
            if (realBufferedSource != null) {
                return realBufferedSource;
            }
            RealBufferedSource realBufferedSourceC = Okio.c(this.f21366c.r(this.f21365b));
            this.f21370i = realBufferedSourceC;
            return realBufferedSourceC;
        }
    }
}
