package com.vuitton.android.domain.usecase.forms;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.forms.GetProfileFormUseCase", f = "GetProfileFormUseCase.kt", l = {17, 19}, m = "run-gIAlu-s", v = 2)
final class GetProfileFormUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetProfileFormUseCase f50073c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetProfileFormUseCase$run$1(GetProfileFormUseCase getProfileFormUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50073c = getProfileFormUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50072b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f50073c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
