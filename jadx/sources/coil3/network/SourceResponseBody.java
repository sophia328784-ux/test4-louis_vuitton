package coil3.network;

import com.appsflyer.sdk_base.referrer.Payload;
import java.io.IOException;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmInline;
import okio.Buffer;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.RealBufferedSink;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0083@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcoil3/network/SourceResponseBody;", "Lcoil3/network/NetworkResponseBody;", Payload.SOURCE, "Lokio/BufferedSource;", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
@JvmInline
final class SourceResponseBody implements NetworkResponseBody {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BufferedSource f21584b;

    @Override // java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f21584b.close();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SourceResponseBody) {
            return this.f21584b.equals(((SourceResponseBody) obj).f21584b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f21584b.hashCode();
    }

    @Override // coil3.network.NetworkResponseBody
    public final Unit k1(FileSystem fileSystem, Path path) throws Throwable {
        BufferedSource bufferedSource = this.f21584b;
        RealBufferedSink realBufferedSinkB = Okio.b(fileSystem.q(path, false));
        try {
            new Long(bufferedSource.N1(realBufferedSinkB));
            try {
                realBufferedSinkB.close();
                th = null;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                realBufferedSinkB.close();
            } catch (Throwable th3) {
                ExceptionsKt.a(th, th3);
            }
        }
        if (th == null) {
            return Unit.f71739a;
        }
        throw th;
    }

    public final String toString() {
        return "SourceResponseBody(source=" + this.f21584b + ")";
    }

    @Override // coil3.network.NetworkResponseBody
    public final Unit v1(Buffer buffer) {
        this.f21584b.N1(buffer);
        return Unit.f71739a;
    }
}
