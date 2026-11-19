package androidx.media3.exoplayer;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;
import defpackage.r81;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ExoPlaybackException extends PlaybackException {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f14632k;
    public final String l;
    public final int m;
    public final Format n;
    public final int o;
    public final MediaSource.MediaPeriodId p;
    public final boolean q;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Type {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ExoPlaybackException(int i2, Exception exc, int i3, String str, int i4, Format format, int i5, MediaSource.MediaPeriodId mediaPeriodId, boolean z) {
        String str2;
        int i6;
        Format format2;
        String string;
        String str3;
        if (i2 == 0) {
            str2 = str;
            i6 = i4;
            format2 = format;
            string = "Source error";
        } else if (i2 != 1) {
            string = i2 != 3 ? "Unexpected runtime error" : "Remote error";
            str2 = str;
            i6 = i4;
            format2 = format;
        } else {
            StringBuilder sb = new StringBuilder();
            str2 = str;
            sb.append(str2);
            sb.append(" error, index=");
            i6 = i4;
            sb.append(i6);
            sb.append(", format=");
            format2 = format;
            sb.append(format2);
            sb.append(", format_supported=");
            String str4 = Util.f14242a;
            if (i5 == 0) {
                str3 = "NO";
            } else if (i5 == 1) {
                str3 = "NO_UNSUPPORTED_SUBTYPE";
            } else if (i5 == 2) {
                str3 = "NO_UNSUPPORTED_DRM";
            } else if (i5 == 3) {
                str3 = "NO_EXCEEDS_CAPABILITIES";
            } else {
                if (i5 != 4) {
                    r81.b();
                    throw null;
                }
                str3 = "YES";
            }
            sb.append(str3);
            string = sb.toString();
        }
        this(TextUtils.isEmpty(null) ? string : string.concat(": null"), exc, i3, i2, str2, i6, format2, i5, mediaPeriodId, SystemClock.elapsedRealtime(), z);
    }

    @Override // androidx.media3.common.PlaybackException
    public final boolean a(PlaybackException playbackException) {
        if (!super.a(playbackException)) {
            return false;
        }
        String str = Util.f14242a;
        ExoPlaybackException exoPlaybackException = (ExoPlaybackException) playbackException;
        return this.f14632k == exoPlaybackException.f14632k && Objects.equals(this.l, exoPlaybackException.l) && this.m == exoPlaybackException.m && Objects.equals(this.n, exoPlaybackException.n) && this.o == exoPlaybackException.o && Objects.equals(this.p, exoPlaybackException.p) && this.q == exoPlaybackException.q;
    }

    public final ExoPlaybackException b(MediaSource.MediaPeriodId mediaPeriodId) {
        String message = getMessage();
        String str = Util.f14242a;
        return new ExoPlaybackException(message, getCause(), this.f13915b, this.f14632k, this.l, this.m, this.n, this.o, mediaPeriodId, this.f13916c, this.q);
    }

    public ExoPlaybackException(String str, Throwable th, int i2, int i3, String str2, int i4, Format format, int i5, MediaSource.MediaPeriodId mediaPeriodId, long j2, boolean z) {
        super(str, th, i2, Bundle.EMPTY, j2);
        Preconditions.g(!z || i3 == 1);
        Preconditions.g(th != null || i3 == 3);
        this.f14632k = i3;
        this.l = str2;
        this.m = i4;
        this.n = format;
        this.o = i5;
        this.p = mediaPeriodId;
        this.q = z;
    }

    public ExoPlaybackException(int i2, Exception exc, int i3) {
        this(i2, exc, i3, null, -1, null, 4, null, false);
    }
}
