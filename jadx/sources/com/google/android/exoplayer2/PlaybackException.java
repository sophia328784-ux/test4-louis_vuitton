package com.google.android.exoplayer2;

import android.os.SystemClock;
import defpackage.tr;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class PlaybackException extends Exception implements Bundleable {

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ErrorCode {
    }

    static {
        tr.v(0, 1, 2, 3, 4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaybackException(String str, Throwable th, int i2) {
        super(str, th);
        SystemClock.elapsedRealtime();
    }
}
