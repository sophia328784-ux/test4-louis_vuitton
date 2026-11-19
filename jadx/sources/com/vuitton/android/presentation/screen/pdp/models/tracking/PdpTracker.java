package com.vuitton.android.presentation.screen.pdp.models.tracking;

import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;", "", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PdpTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f61585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f61586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ProductUiModel f61587c;
    public String d;

    @Inject
    public PdpTracker(AnalyticsTracker analyticsTracker) {
        analyticsTracker.getClass();
        this.f61585a = analyticsTracker;
    }

    public final void a(String str, String str2) {
        str2.getClass();
        this.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnPanelInfoEvent(str, str2, null), this.f61586b, this.f61587c, this.d));
    }
}
