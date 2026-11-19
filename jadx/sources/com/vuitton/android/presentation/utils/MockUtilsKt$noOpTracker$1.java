package com.vuitton.android.presentation.utils;

import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.UserProperty;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/utils/MockUtilsKt$noOpTracker$1", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MockUtilsKt$noOpTracker$1 extends AnalyticsTracker {
    @Override // com.vuitton.android.presentation.screen.analytics.AnalyticsTracker
    public final void a(Hit hit) {
    }

    @Override // com.vuitton.android.presentation.screen.analytics.AnalyticsTracker
    public final void b(UserProperty.WebViewUserProperty webViewUserProperty) {
    }
}
