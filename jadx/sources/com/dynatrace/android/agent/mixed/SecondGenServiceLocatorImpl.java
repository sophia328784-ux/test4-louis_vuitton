package com.dynatrace.android.agent.mixed;

import android.content.Context;
import com.dynatrace.agent.di.SecondGenServiceLocator;
import com.dynatrace.android.agent.metrics.AppVersionTracker;
import com.dynatrace.android.agent.metrics.BatteryTracker;
import com.dynatrace.android.agent.util.SdkVersionProviderImpl;
import defpackage.ct0;

/* JADX INFO: loaded from: classes2.dex */
public class SecondGenServiceLocatorImpl implements SecondGenServiceLocator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f27577a;

    public SecondGenServiceLocatorImpl(Context context) {
        this.f27577a = context;
    }

    @Override // com.dynatrace.agent.di.SecondGenServiceLocator
    public final SessionInformationProviderImpl a() {
        return new SessionInformationProviderImpl();
    }

    @Override // com.dynatrace.agent.di.SecondGenServiceLocator
    public final ct0 b() {
        return new ct0(14);
    }

    @Override // com.dynatrace.agent.di.SecondGenServiceLocator
    public final SecondGenMetricsProviderImpl c() {
        SdkVersionProviderImpl sdkVersionProviderImpl = new SdkVersionProviderImpl();
        Context context = this.f27577a;
        return new SecondGenMetricsProviderImpl(new AppVersionTracker(context, sdkVersionProviderImpl), BatteryTracker.b(context));
    }
}
