package com.vuitton.android.data.datasource.aicompanion;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.AICompanionApi;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;", "", "Lcom/vuitton/android/data/api/bff/user/AICompanionApi;", "aiCompanionApi", "<init>", "(Lcom/vuitton/android/data/api/bff/user/AICompanionApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AICompanionRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AICompanionApi f43752a;

    @Inject
    public AICompanionRemoteDataSource(AICompanionApi aICompanionApi) {
        aICompanionApi.getClass();
        this.f43752a = aICompanionApi;
    }
}
