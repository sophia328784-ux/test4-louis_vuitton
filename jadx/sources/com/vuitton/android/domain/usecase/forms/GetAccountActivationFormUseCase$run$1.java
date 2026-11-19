package com.vuitton.android.domain.usecase.forms;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.forms.GetAccountActivationFormUseCase", f = "GetAccountActivationFormUseCase.kt", l = {13, 15}, m = "run-gIAlu-s", v = 2)
final class GetAccountActivationFormUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetAccountActivationFormUseCase f50038c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetAccountActivationFormUseCase$run$1(GetAccountActivationFormUseCase getAccountActivationFormUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50038c = getAccountActivationFormUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50037b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50038c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
