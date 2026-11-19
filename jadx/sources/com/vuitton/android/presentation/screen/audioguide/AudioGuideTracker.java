package com.vuitton.android.presentation.screen.audioguide;

import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;", "", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AudioGuideTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f52976a;

    @Inject
    public AudioGuideTracker(AnalyticsTracker analyticsTracker) {
        analyticsTracker.getClass();
        this.f52976a = analyticsTracker;
    }
}
