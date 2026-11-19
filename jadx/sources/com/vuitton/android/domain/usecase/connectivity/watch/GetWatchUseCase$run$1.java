package com.vuitton.android.domain.usecase.connectivity.watch;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.watch.GetWatchUseCase", f = "GetWatchUseCase.kt", l = {17}, m = "run-gIAlu-s", v = 2)
final class GetWatchUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public GetWatchUseCase.Params f49835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49836c;
    public final /* synthetic */ GetWatchUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49837e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetWatchUseCase$run$1(GetWatchUseCase getWatchUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getWatchUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49836c = obj;
        this.f49837e |= Integer.MIN_VALUE;
        Object objA = this.d.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
