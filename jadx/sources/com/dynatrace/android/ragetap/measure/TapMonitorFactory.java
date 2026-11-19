package com.dynatrace.android.ragetap.measure;

import android.view.Window;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.metrics.AndroidMetrics;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetrics;
import com.dynatrace.android.ragetap.detection.RageTapDetector;
import com.dynatrace.android.window.OnTouchEventListener;
import com.dynatrace.android.window.WindowListenerFactory;

/* JADX INFO: loaded from: classes2.dex */
public class TapMonitorFactory implements WindowListenerFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RageTapDetector f27719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeLineProvider f27720b;

    static {
        boolean z = Global.f27307a;
    }

    public TapMonitorFactory(RageTapDetector rageTapDetector, TimeLineProvider timeLineProvider) {
        this.f27719a = rageTapDetector;
        this.f27720b = timeLineProvider;
    }

    @Override // com.dynatrace.android.window.WindowListenerFactory
    public final OnTouchEventListener a(Window window) {
        float f2;
        ScreenMetrics screenMetrics = AndroidMetrics.a().r;
        if (screenMetrics == null) {
            if (Global.f27307a) {
                Utility.n("Cannot determine screen density as ScreenMetrics is null");
            }
            f2 = 1.0f;
        } else {
            f2 = screenMetrics.d;
        }
        return new TapMonitor(this.f27719a, new MotionEventConverter(f2), this.f27720b);
    }
}
