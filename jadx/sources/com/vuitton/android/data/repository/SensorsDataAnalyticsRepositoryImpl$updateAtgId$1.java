package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.SensorsDataAnalyticsRepositoryImpl", f = "SensorsDataAnalyticsRepositoryImpl.kt", l = {133}, m = "updateAtgId", v = 2)
final class SensorsDataAnalyticsRepositoryImpl$updateAtgId$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SensorsDataAnalyticsRepositoryImpl f48024c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SensorsDataAnalyticsRepositoryImpl$updateAtgId$1(SensorsDataAnalyticsRepositoryImpl sensorsDataAnalyticsRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48024c = sensorsDataAnalyticsRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48023b = obj;
        this.d |= Integer.MIN_VALUE;
        return SensorsDataAnalyticsRepositoryImpl.e(this.f48024c, this);
    }
}
