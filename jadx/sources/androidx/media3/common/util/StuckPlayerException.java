package androidx.media3.common.util;

import defpackage.n00;
import defpackage.r81;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public final class StuckPlayerException extends IllegalStateException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14232c;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StuckType {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public StuckPlayerException(int i2, int i3) {
        String strM;
        if (i2 == 0) {
            strM = n00.m(i3, "Player stuck buffering and not loading for ", " ms");
        } else if (i2 == 1) {
            strM = n00.m(i3, "Player stuck buffering with no progress for ", " ms");
        } else if (i2 == 2) {
            strM = n00.m(i3, "Player stuck playing with no progress for ", " ms");
        } else if (i2 == 3) {
            strM = n00.m(i3, "Player stuck playing without ending for ", " ms");
        } else {
            if (i2 != 4) {
                r81.b();
                throw null;
            }
            strM = n00.m(i3, "Player stuck suppressed for ", " ms");
        }
        super(strM);
        this.f14231b = i2;
        this.f14232c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && StuckPlayerException.class == obj.getClass()) {
            StuckPlayerException stuckPlayerException = (StuckPlayerException) obj;
            if (this.f14231b == stuckPlayerException.f14231b && this.f14232c == stuckPlayerException.f14232c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((527 + this.f14231b) * 31) + this.f14232c;
    }
}
