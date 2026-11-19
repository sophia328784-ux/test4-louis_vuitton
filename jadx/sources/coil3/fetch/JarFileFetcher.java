package coil3.fetch;

import coil3.ImageLoader;
import coil3.Uri;
import coil3.graphics.DataSource;
import coil3.graphics.ImageSourceKt;
import coil3.request.Options;
import coil3.util.MimeTypeMap;
import defpackage.o51;
import defpackage.tg0;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.FileSystem;
import okio.Path;
import okio.internal.ZipFilesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcoil3/fetch/JarFileFetcher;", "Lcoil3/fetch/Fetcher;", "Lcoil3/Uri;", "uri", "Lcoil3/request/Options;", "options", "<init>", "(Lcoil3/Uri;Lcoil3/request/Options;)V", "Factory", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class JarFileFetcher implements Fetcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f21439a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Options f21440b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/fetch/JarFileFetcher$Factory;", "Lcoil3/fetch/Fetcher$Factory;", "Lcoil3/Uri;", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, ImageLoader imageLoader) {
            Uri uri = (Uri) obj;
            if (Intrinsics.c(uri.f21268c, "jar:file")) {
                return new JarFileFetcher(uri, options);
            }
            return null;
        }
    }

    public JarFileFetcher(Uri uri, Options options) {
        this.f21439a = uri;
        this.f21440b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        Uri uri = this.f21439a;
        String str = uri.f21269e;
        if (str == null) {
            str = "";
        }
        int iU = StringsKt.u(str, '!', 0, 6);
        if (iU == -1) {
            tg0.d(uri, "Invalid jar:file URI: ");
            return null;
        }
        Path.Companion companion = Path.f77432c;
        String strSubstring = str.substring(0, iU);
        companion.getClass();
        Path pathA = Path.Companion.a(strSubstring);
        Path pathA2 = Path.Companion.a(str.substring(iU + 1, str.length()));
        FileSystem fileSystem = this.f21440b.f21664f;
        fileSystem.getClass();
        return new SourceFetchResult(ImageSourceKt.a(pathA2, ZipFilesKt.c(pathA, fileSystem, new o51(28)), null, null, 28), MimeTypeMap.a(StringsKt.R(JwtParser.SEPARATOR_CHAR, pathA2.b(), "")), DataSource.DISK);
    }
}
