package androidx.media3.exoplayer.audio;

import android.os.Build;
import com.github.druk.dnssd.NSType;
import com.google.common.collect.ImmutableSet;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public abstract class IamfUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmutableSet f15019a;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface OutputLayout {
    }

    static {
        Integer numValueOf = Integer.valueOf(NSType.AXFR);
        f15019a = Build.VERSION.SDK_INT < 32 ? ImmutableSet.r(4, 12, numValueOf, 6396, 4) : ImmutableSet.x(12, numValueOf, 6396, 4, 3145980, 82172, 737532, 9126140, 33904892, 202070268, 744444, 67108860, 743676, 3152124, 88316, 81980, 205215996, 3890172);
    }
}
