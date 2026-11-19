package com.dynatrace.agent.storage.preference;

import com.dynatrace.agent.storage.db.EndPointInfo;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.EndPointInfoDataSourceImpl", f = "EndPointInfoDataSourceImpl.kt", l = {56}, m = "setEndPointInfo")
final class EndPointInfoDataSourceImpl$setEndPointInfo$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public EndPointInfo f26960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f26961c;
    public final /* synthetic */ EndPointInfoDataSourceImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f26962e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EndPointInfoDataSourceImpl$setEndPointInfo$1(EndPointInfoDataSourceImpl endPointInfoDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = endPointInfoDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26961c = obj;
        this.f26962e |= Integer.MIN_VALUE;
        return this.d.b(null, this);
    }
}
