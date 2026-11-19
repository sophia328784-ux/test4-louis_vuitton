package com.dynatrace.android.lifecycle.activitytracking;

import android.content.Context;
import com.dynatrace.agent.di.CoreComponent;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.metrics.AndroidMetrics;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetrics;
import com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetricsListener;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class ActiveActivityMonitor implements ActiveActivityListener, ScreenMetricsListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ActiveActivityTracker f27655a;

    /* JADX WARN: Code duplicated, block: B:16:0x0026  */
    /* JADX WARN: Code duplicated, block: B:18:0x002a  */
    @Override // com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetricsListener
    public final void a(ScreenMetrics screenMetrics) {
        AndroidMetrics androidMetricsA = AndroidMetrics.a();
        androidMetricsA.getClass();
        if (screenMetrics != null && screenMetrics.f27661b > 0 && screenMetrics.f27660a > 0 && screenMetrics.f27662c > 0) {
            float f2 = screenMetrics.d;
            if (f2 == Float.POSITIVE_INFINITY || f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                if (Global.f27307a) {
                    Objects.toString(screenMetrics);
                    Utility.g();
                }
                androidMetricsA.r = null;
            } else {
                androidMetricsA.r = screenMetrics;
            }
        } else {
            if (Global.f27307a) {
                Objects.toString(screenMetrics);
                Utility.g();
            }
            androidMetricsA.r = null;
        }
        Context context = androidMetricsA.f27551a;
        if (context != null) {
            androidMetricsA.f27559k = context.getResources().getConfiguration().orientation;
        }
        CoreComponent.f26702k.getClass();
        CoreComponent coreComponent = CoreComponent.l;
        if (coreComponent != null) {
            coreComponent.f26706e.b(screenMetrics);
        }
    }

    @Override // com.dynatrace.android.lifecycle.activitytracking.ActiveActivityListener
    public final void b(String str) {
        AndroidMetrics.a().s = str;
    }
}
