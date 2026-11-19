package com.vuitton.android.domain.usecase.authentication.oauth;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.authentication.oauth.RegisterUseCase", f = "RegisterUseCase.kt", l = {10}, m = "run-gIAlu-s", v = 2)
final class RegisterUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RegisterUseCase f49412c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RegisterUseCase$run$1(RegisterUseCase registerUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49412c = registerUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49411b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49412c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
