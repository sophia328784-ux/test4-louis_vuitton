package com.vuitton.android.data.time;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.time.TimeProvider;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/time/SystemTimeProvider;", "Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SystemTimeProvider implements TimeProvider {
    @Inject
    public SystemTimeProvider() {
    }

    @Override // com.vuitton.foundation.model.domain.model.time.TimeProvider
    public final long a() {
        return System.currentTimeMillis();
    }
}
