package com.dynatrace.agent.storage.preference;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.DataStoreExitReasonTimestampDataSource", f = "DataStoreExitReasonTimestampDataSource.kt", l = {57}, m = "saveCrashTimestamp")
final class DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f26941b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f26942c;
    public final /* synthetic */ DataStoreExitReasonTimestampDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f26943e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1(DataStoreExitReasonTimestampDataSource dataStoreExitReasonTimestampDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = dataStoreExitReasonTimestampDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26942c = obj;
        this.f26943e |= Integer.MIN_VALUE;
        return this.d.b(0L, this);
    }
}
