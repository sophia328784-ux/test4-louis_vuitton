package com.vuitton.android.domain.usecase.personalselections;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.personalselections.LikePersonalSelectionsUseCase", f = "LikePersonalSelectionsUseCase.kt", l = {13}, m = "run-D9mHw4E", v = 2)
final class LikePersonalSelectionsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LikePersonalSelectionsUseCase f50224c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LikePersonalSelectionsUseCase$run$1(LikePersonalSelectionsUseCase likePersonalSelectionsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50224c = likePersonalSelectionsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50223b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50224c.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
