package com.vuitton.android.domain.usecase.audioguide;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.audioguide.GetCompletedTracksUseCase", f = "GetCompletedTracksUseCase.kt", l = {7}, m = "run-IoAF18A", v = 2)
final class GetCompletedTracksUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetCompletedTracksUseCase f49313c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetCompletedTracksUseCase$run$1(GetCompletedTracksUseCase getCompletedTracksUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49313c = getCompletedTracksUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49312b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49313c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
