package com.vuitton.android.data.datasource.inappbanner;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.inappbanner.InAppBanner;
import java.time.Instant;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;", "", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InAppBannerMemCacheDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f44121a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateFlow f44122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateFlow f44123c;

    @Inject
    public InAppBannerMemCacheDataSource() {
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.f44122b = mutableStateFlowA;
        this.f44123c = FlowKt.b(mutableStateFlowA);
    }

    public final void a() {
        synchronized (this.f44121a) {
            InAppBanner inAppBanner = (InAppBanner) this.f44122b.getValue();
            if (inAppBanner != null) {
                Instant instant = inAppBanner.f67756c;
                Instant instant2 = inAppBanner.d;
                Instant instantNow = Instant.now();
                instantNow.getClass();
                boolean z = false;
                if (instantNow.compareTo(instant) >= 0 && instantNow.compareTo(instant2) <= 0) {
                    z = true;
                }
                if (!z) {
                    this.f44122b.setValue(null);
                }
            }
        }
    }
}
