package androidx.media3.exoplayer;

import android.media.RouteDiscoveryPreference;
import android.os.Build;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes.dex */
final class DefaultSuitableOutputChecker implements SuitableOutputChecker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SuitableOutputChecker f14631a;

    public static final class ImplApi23 implements SuitableOutputChecker {
    }

    public static final class ImplApi35 implements SuitableOutputChecker {
        static {
            new RouteDiscoveryPreference.Builder(ImmutableList.x(), false).build();
        }
    }

    public DefaultSuitableOutputChecker() {
        if (Build.VERSION.SDK_INT >= 35) {
            this.f14631a = new ImplApi35();
        } else {
            this.f14631a = new ImplApi23();
        }
    }
}
