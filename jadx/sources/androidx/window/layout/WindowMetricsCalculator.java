package androidx.window.layout;

import android.content.Context;
import kotlin.Metadata;
import kotlin.NotImplementedError;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Landroidx/window/layout/WindowMetricsCalculator;", "", "Companion", "window_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface WindowMetricsCalculator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f20193a = Companion.f20194a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/window/layout/WindowMetricsCalculator$Companion;", "", "window_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f20194a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final WindowMetricsCalculatorCompat f20195b = new WindowMetricsCalculatorCompat(null, 1, null);
    }

    default WindowMetrics a(Context context) {
        throw new NotImplementedError("Must override computeCurrentWindowMetrics(context) and provide an implementation.");
    }
}
