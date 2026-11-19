package com.vuitton.android.domain.usecase.forms;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.forms.GetAuthenticationFormUseCase", f = "GetAuthenticationFormUseCase.kt", l = {18, 20}, m = "run-gIAlu-s", v = 2)
final class GetAuthenticationFormUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetAuthenticationFormUseCase f50042c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetAuthenticationFormUseCase$run$1(GetAuthenticationFormUseCase getAuthenticationFormUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50042c = getAuthenticationFormUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50041b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50042c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
