package coil3.fetch;

import android.graphics.Bitmap;
import coil3.ImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.graphics.DataSource;
import coil3.graphics.ImageSourceKt;
import coil3.request.Options;
import coil3.util.MimeTypeMap;
import coil3.util.UtilsKt;
import coil3.util.Utils_androidKt;
import defpackage.md;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcoil3/fetch/FileUriFetcher;", "Lcoil3/fetch/Fetcher;", "Lcoil3/Uri;", "uri", "Lcoil3/request/Options;", "options", "<init>", "(Lcoil3/Uri;Lcoil3/request/Options;)V", "Factory", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class FileUriFetcher implements Fetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f21434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Options f21435b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/fetch/FileUriFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Lcoil3/Uri;", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, ImageLoader imageLoader) {
            Uri uri = (Uri) obj;
            Function1 function1 = UtilsKt.f21734a;
            String str = uri.f21268c;
            if ((str != null && !str.equals("file")) || uri.f21269e == null) {
                return null;
            }
            Bitmap.Config[] configArr = Utils_androidKt.f21737a;
            if (Intrinsics.c(uri.f21268c, "file") && Intrinsics.c(CollectionsKt.firstOrNull(UriKt.c(uri)), "android_asset")) {
                return null;
            }
            return new FileUriFetcher(uri, options);
        }
    }

    public FileUriFetcher(Uri uri, Options options) {
        this.f21434a = uri;
        this.f21435b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        Path.Companion companion = Path.f77432c;
        String strB = UriKt.b(this.f21434a);
        if (strB == null) {
            md.k("filePath == null");
            return null;
        }
        companion.getClass();
        Path pathA = Path.Companion.a(strB);
        return new SourceFetchResult(ImageSourceKt.a(pathA, this.f21435b.f21664f, null, null, 28), MimeTypeMap.a(StringsKt.R(JwtParser.SEPARATOR_CHAR, pathA.b(), "")), DataSource.DISK);
    }
}
