package androidx.media3.common;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.media3.common.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class PlaybackException extends Exception {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f13910e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f13911f;
    public static final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f13912h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f13913i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f13914j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f13916c;
    public final Bundle d;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ErrorCode {
    }

    static {
        String str = Util.f14242a;
        f13910e = Integer.toString(0, 36);
        f13911f = Integer.toString(1, 36);
        g = Integer.toString(2, 36);
        f13912h = Integer.toString(3, 36);
        f13913i = Integer.toString(4, 36);
        f13914j = Integer.toString(5, 36);
    }

    public PlaybackException(String str, Throwable th, int i2) {
        this(str, th, i2, Bundle.EMPTY, SystemClock.elapsedRealtime());
    }

    public boolean a(PlaybackException playbackException) {
        if (this == playbackException) {
            return true;
        }
        if (playbackException != null && getClass() == playbackException.getClass()) {
            Throwable cause = getCause();
            Throwable cause2 = playbackException.getCause();
            if (cause == null || cause2 == null) {
                if (cause == null && cause2 == null) {
                }
            } else if (!Objects.equals(cause.getMessage(), cause2.getMessage()) || !cause.getClass().equals(cause2.getClass())) {
                return false;
            }
            if (this.f13915b == playbackException.f13915b && Objects.equals(getMessage(), playbackException.getMessage()) && this.f13916c == playbackException.f13916c) {
                return true;
            }
        }
        return false;
    }

    public PlaybackException(String str, Throwable th, int i2, Bundle bundle) {
        this(str, th, i2, bundle, SystemClock.elapsedRealtime());
    }

    public PlaybackException(String str, Throwable th, int i2, Bundle bundle, long j2) {
        super(str, th);
        this.f13915b = i2;
        this.d = bundle;
        this.f13916c = j2;
    }
}
