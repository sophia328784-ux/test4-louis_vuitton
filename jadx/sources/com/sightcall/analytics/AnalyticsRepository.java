package com.sightcall.analytics;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH¦@¢\u0006\u0002\u0010\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/analytics/AnalyticsRepository;", "", "uploadChunk", "", "uploadUrl", "", "token", "analyticChunk", "Lcom/sightcall/analytics/AnalyticsChunk;", "(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/analytics/AnalyticsChunk;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "analytics_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AnalyticsRepository {
    Object uploadChunk(String str, String str2, AnalyticsChunk analyticsChunk, Continuation<? super Unit> continuation);
}
