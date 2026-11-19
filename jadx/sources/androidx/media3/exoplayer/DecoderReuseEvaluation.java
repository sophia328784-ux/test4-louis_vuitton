package androidx.media3.exoplayer;

import android.text.TextUtils;
import androidx.media3.common.Format;
import com.google.common.base.Preconditions;
import defpackage.fc;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public final class DecoderReuseEvaluation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f14582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Format f14583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Format f14584c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14585e;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface DecoderDiscardReasons {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface DecoderReuseResult {
    }

    public DecoderReuseEvaluation(String str, Format format, Format format2, int i2, int i3) {
        Preconditions.g(i2 == 0 || i3 == 0);
        Preconditions.g(true ^ TextUtils.isEmpty(str));
        this.f14582a = str;
        format.getClass();
        this.f14583b = format;
        format2.getClass();
        this.f14584c = format2;
        this.d = i2;
        this.f14585e = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && DecoderReuseEvaluation.class == obj.getClass()) {
            DecoderReuseEvaluation decoderReuseEvaluation = (DecoderReuseEvaluation) obj;
            if (this.d == decoderReuseEvaluation.d && this.f14585e == decoderReuseEvaluation.f14585e && this.f14582a.equals(decoderReuseEvaluation.f14582a) && this.f14583b.equals(decoderReuseEvaluation.f14583b) && this.f14584c.equals(decoderReuseEvaluation.f14584c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f14584c.hashCode() + ((this.f14583b.hashCode() + fc.b((((527 + this.d) * 31) + this.f14585e) * 31, 31, this.f14582a)) * 31);
    }
}
