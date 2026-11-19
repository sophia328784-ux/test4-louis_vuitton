package com.sightcall.analytics.datasource;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010\n¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;", "", "upload", "", "uploadUrl", "", "token", "chunk", "", "fileName", "(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "analytics_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AnalyticsUploadDatasource {
    Object upload(String str, String str2, byte[] bArr, String str3, Continuation<? super Unit> continuation);
}
