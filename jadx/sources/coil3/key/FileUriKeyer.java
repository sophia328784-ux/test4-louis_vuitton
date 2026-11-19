package coil3.key;

import android.graphics.Bitmap;
import coil3.ExtrasKt;
import coil3.Uri;
import coil3.UriKt;
import coil3.request.ImageRequestsKt;
import coil3.request.Options;
import coil3.util.UtilsKt;
import coil3.util.Utils_androidKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okio.FileSystem;
import okio.Path;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/key/FileUriKeyer;", "Lcoil3/key/Keyer;", "Lcoil3/Uri;", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class FileUriKeyer implements Keyer<Uri> {
    @Override // coil3.key.Keyer
    public final String a(Object obj, Options options) {
        String strB;
        Uri uri = (Uri) obj;
        Function1 function1 = UtilsKt.f21734a;
        String str = uri.f21268c;
        if ((str == null || str.equals("file")) && uri.f21269e != null) {
            Bitmap.Config[] configArr = Utils_androidKt.f21737a;
            if ((!Intrinsics.c(uri.f21268c, "file") || !Intrinsics.c(CollectionsKt.firstOrNull(UriKt.c(uri)), "android_asset")) && ((Boolean) ExtrasKt.b(options, ImageRequestsKt.f21650c)).booleanValue() && (strB = UriKt.b(uri)) != null) {
                FileSystem fileSystem = options.f21664f;
                Path.f77432c.getClass();
                return uri + "-" + fileSystem.n(Path.Companion.a(strB)).f77412f;
            }
        }
        return null;
    }
}
