package androidx.core.net;

import android.net.Uri;
import defpackage.b21;
import defpackage.pq0;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"core-ktx"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class UriKt {
    public static final File a(Uri uri) {
        if (!Intrinsics.c(uri.getScheme(), "file")) {
            b21.n(pq0.l(uri, "Uri lacks 'file' scheme: "));
            return null;
        }
        String path = uri.getPath();
        if (path != null) {
            return new File(path);
        }
        b21.n(pq0.l(uri, "Uri path is null: "));
        return null;
    }
}
