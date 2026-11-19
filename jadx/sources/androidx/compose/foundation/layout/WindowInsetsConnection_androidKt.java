package androidx.compose.foundation.layout;

import android.view.ViewConfiguration;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation-layout"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WindowInsetsConnection_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f5070a = ViewConfiguration.getScrollFriction();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final double f5071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final double f5072c;

    static {
        double dLog = Math.log(0.78d) / Math.log(0.9d);
        f5071b = dLog;
        f5072c = dLog - 1.0d;
    }
}
