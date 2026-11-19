package com.sightcall.analytics;

import com.sightcall.analytics.datasource.AnalyticsUploadDatasource;
import com.sightcall.pratik.extensions.StringExtensionsKt;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J&\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0096@¢\u0006\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/sightcall/analytics/AnalyticsRepositoryImpl;", "Lcom/sightcall/analytics/AnalyticsRepository;", "analyticsUploadDatasource", "Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;", "<init>", "(Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;)V", "uploadChunk", "", "uploadUrl", "", "token", "analyticChunk", "Lcom/sightcall/analytics/AnalyticsChunk;", "(Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/analytics/AnalyticsChunk;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "analytics_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AnalyticsRepositoryImpl implements AnalyticsRepository {
    private final AnalyticsUploadDatasource analyticsUploadDatasource;

    @Inject
    public AnalyticsRepositoryImpl(AnalyticsUploadDatasource analyticsUploadDatasource) {
        analyticsUploadDatasource.getClass();
        this.analyticsUploadDatasource = analyticsUploadDatasource;
    }

    @Override // com.sightcall.analytics.AnalyticsRepository
    public Object uploadChunk(String str, String str2, AnalyticsChunk analyticsChunk, Continuation<? super Unit> continuation) {
        AnalyticsUploadDatasource analyticsUploadDatasource = this.analyticsUploadDatasource;
        byte[] chunk = analyticsChunk.getChunk();
        AnalyticsChunk.Param param = analyticsChunk.getParam();
        String string = analyticsChunk.getUuid().toString();
        string.getClass();
        Object objUpload = analyticsUploadDatasource.upload(str, str2, chunk, AnalyticsRepositoryImplKt.generateFileName(param, StringExtensionsKt.remove(string, '-')), continuation);
        return objUpload == CoroutineSingletons.COROUTINE_SUSPENDED ? objUpload : Unit.f71739a;
    }
}
