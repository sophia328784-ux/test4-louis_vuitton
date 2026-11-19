package com.vuitton.android.domain.usecase.forms;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.forms.GetRegistrationFormUseCase", f = "GetRegistrationFormUseCase.kt", l = {18, 20}, m = "run-gIAlu-s", v = 2)
final class GetRegistrationFormUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetRegistrationFormUseCase f50077c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetRegistrationFormUseCase$run$1(GetRegistrationFormUseCase getRegistrationFormUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50077c = getRegistrationFormUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50076b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50077c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
