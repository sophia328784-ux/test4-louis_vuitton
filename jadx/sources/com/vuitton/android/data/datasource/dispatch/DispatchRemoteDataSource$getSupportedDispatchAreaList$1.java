package com.vuitton.android.data.datasource.dispatch;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.dispatch.DispatchRemoteDataSource", f = "DispatchRemoteDataSource.kt", l = {13}, m = "getSupportedDispatchAreaList-IoAF18A", v = 2)
final class DispatchRemoteDataSource$getSupportedDispatchAreaList$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DispatchRemoteDataSource f44102c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchRemoteDataSource$getSupportedDispatchAreaList$1(DispatchRemoteDataSource dispatchRemoteDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44102c = dispatchRemoteDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44101b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f44102c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
