package com.vuitton.android.domain.usecase.video;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.video.GetLiveVideoUseCase", f = "GetLiveVideoUseCase.kt", l = {9}, m = "run-Tkf79N4", v = 2)
final class GetLiveVideoUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetLiveVideoUseCase f50427c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetLiveVideoUseCase$run$1(GetLiveVideoUseCase getLiveVideoUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50427c = getLiveVideoUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50426b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50427c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
