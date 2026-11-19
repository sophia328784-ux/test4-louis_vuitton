package com.vuitton.android.data.datasource.auth;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;", "", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface TwistTokenDataSource {
    Object a(ContinuationImpl continuationImpl);

    Object b(ContinuationImpl continuationImpl);

    Object c(AuthToken.Twist twist, ContinuationImpl continuationImpl);
}
