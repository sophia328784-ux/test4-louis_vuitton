package com.vuitton.android.domain.usecase.authentication.social;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.authentication.social.SocialLoginUseCase", f = "SocialLoginUseCase.kt", l = {15}, m = "run-gIAlu-s", v = 2)
final class SocialLoginUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SocialLoginUseCase f49418c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialLoginUseCase$run$1(SocialLoginUseCase socialLoginUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49418c = socialLoginUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49417b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49418c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
