package com.dynatrace.android.lifecycle.appstart;

import android.app.Application;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.agent.measurement.MeasurementProvider;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class AppStartController {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f27677h = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MeasurementProvider f27678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppStartAggregator f27679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppStartActionObserver f27680c;
    public final AtomicBoolean d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ActivityStateListener f27681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Application f27682f;
    public AppStartAction.Builder g;

    static {
        boolean z = Global.f27307a;
    }

    public AppStartController(MeasurementProvider measurementProvider, AppStartAggregator appStartAggregator, AppStartActionObserver appStartActionObserver, Application application) {
        this.f27678a = measurementProvider;
        this.f27679b = appStartAggregator;
        this.f27680c = appStartActionObserver;
        this.f27682f = application;
        this.f27681e = new ActivityStateListener(this, measurementProvider);
    }

    public final void a(MeasurementPoint measurementPoint, String str) {
        if (this.d.compareAndSet(false, true)) {
            AppStartAction.Builder builder = this.g;
            builder.f27675c = measurementPoint;
            builder.f27673a = str;
            AppStartAction appStartAction = new AppStartAction(builder);
            boolean z = Global.f27307a;
            this.f27680c.a(appStartAction);
            this.f27682f.unregisterActivityLifecycleCallbacks(this.f27681e);
        }
    }
}
