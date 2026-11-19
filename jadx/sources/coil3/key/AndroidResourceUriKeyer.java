package coil3.key;

import android.content.res.Configuration;
import android.graphics.Bitmap;
import coil3.Uri;
import coil3.request.Options;
import coil3.util.Utils_androidKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/key/AndroidResourceUriKeyer;", "Lcoil3/key/Keyer;", "Lcoil3/Uri;", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AndroidResourceUriKeyer implements Keyer<Uri> {
    @Override // coil3.key.Keyer
    public final String a(Object obj, Options options) {
        Uri uri = (Uri) obj;
        if (!Intrinsics.c(uri.f21268c, "android.resource")) {
            return null;
        }
        Configuration configuration = options.f21660a.getResources().getConfiguration();
        Bitmap.Config[] configArr = Utils_androidKt.f21737a;
        return uri + ":" + (configuration.uiMode & 48);
    }
}
