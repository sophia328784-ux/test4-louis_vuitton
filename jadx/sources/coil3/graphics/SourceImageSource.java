package coil3.graphics;

import coil3.util.UtilsKt;
import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcoil3/decode/SourceImageSource;", "Lcoil3/decode/ImageSource;", "Lokio/BufferedSource;", Payload.SOURCE, "Lokio/FileSystem;", "fileSystem", "Lcoil3/decode/ImageSource$Metadata;", "metadata", "<init>", "(Lokio/BufferedSource;Lokio/FileSystem;Lcoil3/decode/ImageSource$Metadata;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class SourceImageSource implements ImageSource {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileSystem f21373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageSource.Metadata f21374c;
    public final Object d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f21375e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BufferedSource f21376f;

    public SourceImageSource(BufferedSource bufferedSource, FileSystem fileSystem, ImageSource.Metadata metadata) {
        this.f21373b = fileSystem;
        this.f21374c = metadata;
        this.f21376f = bufferedSource;
    }

    @Override // coil3.graphics.ImageSource
    public final Path E1() {
        synchronized (this.d) {
            if (this.f21375e) {
                throw new IllegalStateException("closed");
            }
        }
        return null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.d) {
            try {
                this.f21375e = true;
                BufferedSource bufferedSource = this.f21376f;
                if (bufferedSource != null) {
                    Function1 function1 = UtilsKt.f21734a;
                    try {
                        bufferedSource.close();
                    } catch (RuntimeException e2) {
                        throw e2;
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // coil3.graphics.ImageSource
    /* JADX INFO: renamed from: getFileSystem, reason: from getter */
    public final FileSystem getF21373b() {
        return this.f21373b;
    }

    @Override // coil3.graphics.ImageSource
    /* JADX INFO: renamed from: getMetadata, reason: from getter */
    public final ImageSource.Metadata getF21374c() {
        return this.f21374c;
    }

    @Override // coil3.graphics.ImageSource
    public final BufferedSource source() {
        BufferedSource bufferedSource;
        synchronized (this.d) {
            try {
                if (this.f21375e) {
                    throw new IllegalStateException("closed");
                }
                bufferedSource = this.f21376f;
                if (bufferedSource == null) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bufferedSource;
    }
}
