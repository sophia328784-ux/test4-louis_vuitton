package coil3.fetch;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Point;
import android.os.Bundle;
import coil3.ImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.graphics.ContentMetadata;
import coil3.graphics.DataSource;
import coil3.graphics.SourceImageSource;
import coil3.request.Options;
import coil3.size.Dimension;
import coil3.size.Size;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.wp;
import java.io.FileNotFoundException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcoil3/fetch/ContentUriFetcher;", "Lcoil3/fetch/Fetcher;", "Lcoil3/Uri;", DbParams.KEY_DATA, "Lcoil3/request/Options;", "options", "<init>", "(Lcoil3/Uri;Lcoil3/request/Options;)V", "Factory", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ContentUriFetcher implements Fetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f21428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Options f21429b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/fetch/ContentUriFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Lcoil3/Uri;", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, ImageLoader imageLoader) {
            Uri uri = (Uri) obj;
            if (Intrinsics.c(uri.f21268c, "content")) {
                return new ContentUriFetcher(uri, options);
            }
            return null;
        }
    }

    public ContentUriFetcher(Uri uri, Options options) {
        this.f21428a = uri;
        this.f21429b = options;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x009e  */
    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) throws FileNotFoundException {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        List listC;
        int size;
        Bundle bundle;
        Uri uri = this.f21428a;
        android.net.Uri uri2 = android.net.Uri.parse(uri.f21266a);
        Options options = this.f21429b;
        ContentResolver contentResolver = options.f21660a.getContentResolver();
        if (Intrinsics.c(uri.d, "com.android.contacts") && Intrinsics.c(CollectionsKt.N(UriKt.c(uri)), "display_photo")) {
            assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri2, "r");
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                wp.e("Unable to find a contact photo associated with '", uri2, "'.");
                return null;
            }
        } else if (Intrinsics.c(uri.d, "media") && (size = (listC = UriKt.c(uri)).size()) >= 3 && Intrinsics.c(listC.get(size - 3), "audio") && Intrinsics.c(listC.get(size - 2), "albums")) {
            Size size2 = options.f21661b;
            Dimension dimension = size2.f21690a;
            Dimension.Pixels pixels = dimension instanceof Dimension.Pixels ? (Dimension.Pixels) dimension : null;
            if (pixels != null) {
                int i2 = pixels.f21684a;
                Dimension dimension2 = size2.f21691b;
                Dimension.Pixels pixels2 = dimension2 instanceof Dimension.Pixels ? (Dimension.Pixels) dimension2 : null;
                if (pixels2 != null) {
                    int i3 = pixels2.f21684a;
                    bundle = new Bundle(1);
                    bundle.putParcelable("android.content.extra.SIZE", new Point(i2, i3));
                } else {
                    bundle = null;
                }
            } else {
                bundle = null;
            }
            assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openTypedAssetFile(uri2, "image/*", bundle, null);
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                wp.e("Unable to find a music thumbnail associated with '", uri2, "'.");
                return null;
            }
        } else {
            assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri2, "r");
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                wp.e("Unable to open '", uri2, "'.");
                return null;
            }
        }
        return new SourceFetchResult(new SourceImageSource(new RealBufferedSource(Okio.f(assetFileDescriptorOpenAssetFileDescriptor.createInputStream())), options.f21664f, new ContentMetadata(uri, assetFileDescriptorOpenAssetFileDescriptor)), contentResolver.getType(uri2), DataSource.DISK);
    }
}
