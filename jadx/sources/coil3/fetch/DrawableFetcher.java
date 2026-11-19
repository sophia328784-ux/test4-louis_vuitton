package coil3.fetch;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import coil3.ExtrasKt;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.graphics.DataSource;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.util.DrawableUtils;
import coil3.util.Utils_androidKt;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcoil3/fetch/DrawableFetcher;", "Lcoil3/fetch/Fetcher;", "Landroid/graphics/drawable/Drawable;", DbParams.KEY_DATA, "Lcoil3/request/Options;", "options", "<init>", "(Landroid/graphics/drawable/Drawable;Lcoil3/request/Options;)V", "Factory", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class DrawableFetcher implements Fetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Drawable f21432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Options f21433b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/fetch/DrawableFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Landroid/graphics/drawable/Drawable;", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Fetcher.Factory<Drawable> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, ImageLoader imageLoader) {
            return new DrawableFetcher((Drawable) obj, options);
        }
    }

    public DrawableFetcher(Drawable drawable, Options options) {
        this.f21432a = drawable;
        this.f21433b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        Bitmap.Config[] configArr = Utils_androidKt.f21737a;
        Drawable bitmapDrawable = this.f21432a;
        boolean z = (bitmapDrawable instanceof VectorDrawable) || (bitmapDrawable instanceof VectorDrawableCompat);
        if (z) {
            Options options = this.f21433b;
            Bitmap.Config configB = ImageRequests_androidKt.b(options);
            Size size = options.f21661b;
            boolean z2 = true;
            Scale scale = options.f21662c;
            Size size2 = (Size) ExtrasKt.b(options, ImageRequestsKt.f21649b);
            if (options.d != Precision.INEXACT) {
                z2 = false;
            }
            bitmapDrawable = new BitmapDrawable(options.f21660a.getResources(), DrawableUtils.a(bitmapDrawable, configB, size, scale, size2, z2));
        }
        return new ImageFetchResult(Image_androidKt.b(bitmapDrawable), z, DataSource.MEMORY);
    }
}
