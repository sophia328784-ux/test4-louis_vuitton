package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.Util;
import defpackage.tr;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class ExoPlaybackException extends PlaybackException {

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Type {
    }

    static {
        tr.v(1001, 1002, 1003, 1004, 1005);
        Util.e(1006);
    }
}
