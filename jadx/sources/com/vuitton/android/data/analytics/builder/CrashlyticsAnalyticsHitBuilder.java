package com.vuitton.android.data.analytics.builder;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.analytics.CrashlyticsAnomalyException;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/analytics/builder/CrashlyticsAnalyticsHitBuilder;", "Lcom/vuitton/android/data/analytics/builder/AnalyticsHitBuilder;", "Lcom/vuitton/android/data/analytics/CrashlyticsAnomalyException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CrashlyticsAnalyticsHitBuilder implements AnalyticsHitBuilder<CrashlyticsAnomalyException> {
    @Inject
    public CrashlyticsAnalyticsHitBuilder() {
    }

    @Override // com.vuitton.android.data.analytics.builder.AnalyticsHitBuilder
    public final Object a(InAppDispatch inAppDispatch, Hit hit) {
        inAppDispatch.getClass();
        hit.getClass();
        if (!(hit instanceof Hit.AnomalyHit)) {
            return null;
        }
        Hit.AnomalyHit anomalyHit = (Hit.AnomalyHit) hit;
        return new CrashlyticsAnomalyException(anomalyHit.getF66493a().f66507a, anomalyHit.getF66452a());
    }
}
