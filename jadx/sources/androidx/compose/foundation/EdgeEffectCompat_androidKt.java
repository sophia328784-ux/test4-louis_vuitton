package androidx.compose.foundation;

import android.view.ViewConfiguration;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class EdgeEffectCompat_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f4197a = ViewConfiguration.getScrollFriction();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final double f4198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final double f4199c;

    static {
        double dLog = Math.log(0.78d) / Math.log(0.9d);
        f4198b = dLog;
        f4199c = dLog - 1.0d;
    }
}
