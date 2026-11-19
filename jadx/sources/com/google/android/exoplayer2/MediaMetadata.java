package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.Util;
import defpackage.tr;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class MediaMetadata implements Bundleable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MediaMetadata f28184b;

    public static final class Builder {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Deprecated
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FolderType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MediaType {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PictureType {
    }

    static {
        new Builder();
        f28184b = new MediaMetadata();
        tr.v(0, 1, 2, 3, 4);
        tr.v(5, 6, 8, 9, 10);
        tr.v(11, 12, 13, 14, 15);
        tr.v(16, 17, 18, 19, 20);
        tr.v(21, 22, 23, 24, 25);
        tr.v(26, 27, 28, 29, 30);
        Util.e(31);
        Util.e(32);
        Util.e(1000);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MediaMetadata.class == obj.getClass()) {
            int i2 = Util.f28451a;
            if (Arrays.equals((byte[]) null, (byte[]) null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(null, null, null, null, null, null, null, null, null, Integer.valueOf(Arrays.hashCode((byte[]) null)), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
    }
}
