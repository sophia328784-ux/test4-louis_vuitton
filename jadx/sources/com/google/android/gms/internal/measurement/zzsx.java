package com.google.android.gms.internal.measurement;

import android.net.Uri;
import defpackage.tr;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public interface zzsx {
    default InputStream a(Uri uri) throws zzsk {
        throw new zzsk("openForRead not supported by ".concat(f0()));
    }

    default boolean b(Uri uri) throws zzsk {
        throw new zzsk("exists not supported by ".concat(f0()));
    }

    default File c(Uri uri) throws zzsk {
        String strF0 = f0();
        String strValueOf = String.valueOf(uri);
        throw new zzsk(tr.l(new StringBuilder(strF0.length() + 28 + strValueOf.length()), "Cannot convert uri to file ", strF0, " ", strValueOf));
    }

    default OutputStream d(Uri uri) throws zzsk {
        throw new zzsk("openForWrite not supported by ".concat(f0()));
    }

    default void e(Uri uri) throws zzsk {
        throw new zzsk("deleteFile not supported by ".concat(f0()));
    }

    default void f(Uri uri, Uri uri2) throws zzsk {
        throw new zzsk("rename not supported by ".concat(f0()));
    }

    String f0();
}
