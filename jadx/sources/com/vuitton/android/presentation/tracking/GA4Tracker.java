package com.vuitton.android.presentation.tracking;

import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/tracking/GA4Tracker;", "", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GA4Tracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f65811a;

    @Inject
    public GA4Tracker(AnalyticsTracker analyticsTracker) {
        analyticsTracker.getClass();
        this.f65811a = analyticsTracker;
    }

    public final void a(String str, String str2, String str3, String str4, String str5, Double d, String str6, int i2) {
        str4.getClass();
        str5.getClass();
        this.f65811a.a(GA4TrackingUiModelKt.a(new GA4TrackingUiModel.SelectItemClicked(str, str6, str2, str3, str4, str5, d, i2, null, null, 768, null)));
    }
}
