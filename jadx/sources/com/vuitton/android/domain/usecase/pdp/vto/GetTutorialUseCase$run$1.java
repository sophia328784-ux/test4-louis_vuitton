package com.vuitton.android.domain.usecase.pdp.vto;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.pdp.vto.GetTutorialUseCase", f = "GetTutorialUseCase.kt", l = {12}, m = "run-IiOnze8", v = 2)
final class GetTutorialUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetTutorialUseCase f50205c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTutorialUseCase$run$1(GetTutorialUseCase getTutorialUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50205c = getTutorialUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50204b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50205c.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
