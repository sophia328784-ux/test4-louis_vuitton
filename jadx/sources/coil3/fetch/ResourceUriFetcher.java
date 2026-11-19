package coil3.fetch;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.util.TypedValue;
import androidx.core.content.res.ResourcesCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import coil3.ExtrasKt;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.Uri;
import coil3.UriKt;
import coil3.graphics.DataSource;
import coil3.graphics.ResourceMetadata;
import coil3.graphics.SourceImageSource;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.size.Size;
import coil3.util.ContextsKt;
import coil3.util.DrawableUtils;
import coil3.util.MimeTypeMap;
import coil3.util.Utils_androidKt;
import com.linkplay.medialib.server.HttpServer;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a61;
import defpackage.pq0;
import defpackage.tg0;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.Okio;
import okio.RealBufferedSource;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcoil3/fetch/ResourceUriFetcher;", "Lcoil3/fetch/Fetcher;", "Lcoil3/Uri;", DbParams.KEY_DATA, "Lcoil3/request/Options;", "options", "<init>", "(Lcoil3/Uri;Lcoil3/request/Options;)V", "Factory", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ResourceUriFetcher implements Fetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f21441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Options f21442b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/fetch/ResourceUriFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Lcoil3/Uri;", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, ImageLoader imageLoader) {
            Uri uri = (Uri) obj;
            if (Intrinsics.c(uri.f21268c, "android.resource")) {
                return new ResourceUriFetcher(uri, options);
            }
            return null;
        }
    }

    public ResourceUriFetcher(Uri uri, Options options) {
        this.f21441a = uri;
        this.f21442b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) throws XmlPullParserException, IOException {
        Integer intOrNull;
        Drawable bitmapDrawable;
        Uri uri = this.f21441a;
        String str = uri.d;
        if (str != null) {
            if (StringsKt.w(str)) {
                str = null;
            }
            if (str != null) {
                String str2 = (String) CollectionsKt.N(UriKt.c(uri));
                if (str2 == null || (intOrNull = StringsKt.toIntOrNull(str2)) == null) {
                    a61.q(uri, "Invalid android.resource URI: ");
                    return null;
                }
                int iIntValue = intOrNull.intValue();
                Options options = this.f21442b;
                Context context = options.f21660a;
                Resources resources = str.equals(context.getPackageName()) ? context.getResources() : context.getPackageManager().getResourcesForApplication(str);
                TypedValue typedValue = new TypedValue();
                resources.getValue(iIntValue, typedValue, true);
                String strB = MimeTypeMap.b(typedValue.string.toString());
                if (!Intrinsics.c(strB, HttpServer.MIME_XML)) {
                    TypedValue typedValue2 = new TypedValue();
                    return new SourceFetchResult(new SourceImageSource(new RealBufferedSource(Okio.f(resources.openRawResource(iIntValue, typedValue2))), options.f21664f, new ResourceMetadata(str, iIntValue, typedValue2.density)), strB, DataSource.DISK);
                }
                if (str.equals(context.getPackageName())) {
                    bitmapDrawable = ContextsKt.a(iIntValue, context);
                } else {
                    XmlResourceParser xml = resources.getXml(iIntValue);
                    int next = xml.next();
                    while (next != 2 && next != 1) {
                        next = xml.next();
                    }
                    if (next != 2) {
                        throw new XmlPullParserException("No start tag found.");
                    }
                    Resources.Theme theme = context.getTheme();
                    ThreadLocal threadLocal = ResourcesCompat.f12034a;
                    Drawable drawable = resources.getDrawable(iIntValue, theme);
                    if (drawable == null) {
                        tg0.c(pq0.k(iIntValue, "Invalid resource ID: "));
                        return null;
                    }
                    bitmapDrawable = drawable;
                }
                Bitmap.Config[] configArr = Utils_androidKt.f21737a;
                boolean z = (bitmapDrawable instanceof VectorDrawable) || (bitmapDrawable instanceof VectorDrawableCompat);
                if (z) {
                    bitmapDrawable = new BitmapDrawable(context.getResources(), DrawableUtils.a(bitmapDrawable, (Bitmap.Config) ExtrasKt.b(options, ImageRequests_androidKt.f21652b), options.f21661b, options.f21662c, (Size) ExtrasKt.b(options, ImageRequestsKt.f21649b), options.d == Precision.INEXACT));
                }
                return new ImageFetchResult(Image_androidKt.b(bitmapDrawable), z, DataSource.DISK);
            }
        }
        a61.q(uri, "Invalid android.resource URI: ");
        return null;
    }
}
