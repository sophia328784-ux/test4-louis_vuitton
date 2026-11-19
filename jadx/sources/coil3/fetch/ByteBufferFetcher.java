package coil3.fetch;

import coil3.ImageLoader;
import coil3.graphics.ByteBufferMetadata;
import coil3.graphics.DataSource;
import coil3.graphics.SourceImageSource;
import coil3.request.Options;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okio.Buffer;
import okio.RealBufferedSource;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcoil3/fetch/ByteBufferFetcher;", "Lcoil3/fetch/Fetcher;", "Ljava/nio/ByteBuffer;", DbParams.KEY_DATA, "Lcoil3/request/Options;", "options", "<init>", "(Ljava/nio/ByteBuffer;Lcoil3/request/Options;)V", "Factory", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ByteBufferFetcher implements Fetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ByteBuffer f21424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Options f21425b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/fetch/ByteBufferFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Ljava/nio/ByteBuffer;", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Fetcher.Factory<ByteBuffer> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, ImageLoader imageLoader) {
            return new ByteBufferFetcher((ByteBuffer) obj, options);
        }
    }

    public ByteBufferFetcher(ByteBuffer byteBuffer, Options options) {
        this.f21424a = byteBuffer;
        this.f21425b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        final ByteBuffer byteBuffer = this.f21424a;
        return new SourceFetchResult(new SourceImageSource(new RealBufferedSource(new Source(byteBuffer) { // from class: coil3.fetch.ByteBufferFetcherKt$asSource$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ByteBuffer f21426b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final int f21427c;

            {
                ByteBuffer byteBufferSlice = byteBuffer.slice();
                this.f21426b = byteBufferSlice;
                this.f21427c = byteBufferSlice.capacity();
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            @Override // okio.Source
            public final long read(Buffer buffer, long j2) {
                ByteBuffer byteBuffer2 = this.f21426b;
                int iPosition = byteBuffer2.position();
                int i2 = this.f21427c;
                if (iPosition == i2) {
                    return -1L;
                }
                int iPosition2 = (int) (((long) byteBuffer2.position()) + j2);
                if (iPosition2 <= i2) {
                    i2 = iPosition2;
                }
                byteBuffer2.limit(i2);
                return buffer.write(byteBuffer2);
            }

            @Override // okio.Source
            /* JADX INFO: renamed from: timeout */
            public final Timeout getF77426c() {
                return Timeout.d;
            }
        }), this.f21425b.f21664f, new ByteBufferMetadata(byteBuffer)), null, DataSource.MEMORY);
    }
}
