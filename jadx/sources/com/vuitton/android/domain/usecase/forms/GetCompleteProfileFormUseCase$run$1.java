package com.vuitton.android.domain.usecase.forms;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.forms.GetCompleteProfileFormUseCase", f = "GetCompleteProfileFormUseCase.kt", l = {18, 19}, m = "run-gIAlu-s", v = 2)
final class GetCompleteProfileFormUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetCompleteProfileFormUseCase f50058c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetCompleteProfileFormUseCase$run$1(GetCompleteProfileFormUseCase getCompleteProfileFormUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50058c = getCompleteProfileFormUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50057b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50058c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
