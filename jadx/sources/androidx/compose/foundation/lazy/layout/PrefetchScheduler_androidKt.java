package androidx.compose.foundation.lazy.layout;

import android.os.Build;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PrefetchScheduler_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PrefetchScheduler_androidKt$RobolectricImpl$1 f5564a;

    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    static {
        PrefetchScheduler_androidKt$RobolectricImpl$1 prefetchScheduler_androidKt$RobolectricImpl$1;
        String str = Build.FINGERPRINT;
        if (str != null) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (Intrinsics.c(lowerCase, "robolectric")) {
                prefetchScheduler_androidKt$RobolectricImpl$1 = new PrefetchScheduler_androidKt$RobolectricImpl$1();
            } else {
                prefetchScheduler_androidKt$RobolectricImpl$1 = null;
            }
        } else {
            prefetchScheduler_androidKt$RobolectricImpl$1 = null;
        }
        f5564a = prefetchScheduler_androidKt$RobolectricImpl$1;
    }
}
