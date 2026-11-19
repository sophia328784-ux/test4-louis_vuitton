package coil3.fetch;

import coil3.ImageLoader;
import coil3.graphics.DataSource;
import coil3.graphics.SourceImageSource;
import coil3.request.Options;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okio.Buffer;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcoil3/fetch/ByteArrayFetcher;", "Lcoil3/fetch/Fetcher;", "", "byteArray", "Lcoil3/request/Options;", "options", "<init>", "([BLcoil3/request/Options;)V", "Factory", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ByteArrayFetcher implements Fetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f21422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Options f21423b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/fetch/ByteArrayFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Fetcher.Factory<byte[]> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, ImageLoader imageLoader) {
            return new ByteArrayFetcher((byte[]) obj, options);
        }
    }

    public ByteArrayFetcher(byte[] bArr, Options options) {
        this.f21422a = bArr;
        this.f21423b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        Buffer buffer = new Buffer();
        buffer.m87write(this.f21422a);
        return new SourceFetchResult(new SourceImageSource(buffer, this.f21423b.f21664f, null), null, DataSource.MEMORY);
    }
}
