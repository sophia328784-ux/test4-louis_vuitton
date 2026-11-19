package com.vuitton.android.data.datasource.deeplink;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;", "", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DeepLinkCacheDataSource {
    Object a(ContinuationImpl continuationImpl);

    Object b(String str, ContinuationImpl continuationImpl);

    Object c(ContinuationImpl continuationImpl);
}
