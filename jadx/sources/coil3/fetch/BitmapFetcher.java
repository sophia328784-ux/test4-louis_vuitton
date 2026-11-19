package coil3.fetch;

import android.graphics.Bitmap;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.graphics.DataSource;
import coil3.request.Options;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcoil3/fetch/BitmapFetcher;", "Lcoil3/fetch/Fetcher;", "Landroid/graphics/Bitmap;", "Lcoil3/Bitmap;", DbParams.KEY_DATA, "<init>", "(Landroid/graphics/Bitmap;)V", "Factory", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class BitmapFetcher implements Fetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bitmap f21421a;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/fetch/BitmapFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Landroid/graphics/Bitmap;", "Lcoil3/Bitmap;", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Fetcher.Factory<Bitmap> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, ImageLoader imageLoader) {
            return new BitmapFetcher((Bitmap) obj);
        }
    }

    public BitmapFetcher(Bitmap bitmap) {
        this.f21421a = bitmap;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        return new ImageFetchResult(Image_androidKt.c(this.f21421a), false, DataSource.MEMORY);
    }
}
