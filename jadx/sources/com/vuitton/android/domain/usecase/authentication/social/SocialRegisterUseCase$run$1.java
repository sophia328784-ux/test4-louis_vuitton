package com.vuitton.android.domain.usecase.authentication.social;

import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthParams;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.authentication.social.SocialRegisterUseCase", f = "SocialRegisterUseCase.kt", l = {29, 31, 61}, m = "run-0E7RQCE", v = 2)
final class SocialRegisterUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SocialAuthParams f49422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public KisaConsents f49423c;
    public InAppDispatch d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f49424e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f49425f;
    public final /* synthetic */ SocialRegisterUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f49426h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialRegisterUseCase$run$1(SocialRegisterUseCase socialRegisterUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = socialRegisterUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49425f = obj;
        this.f49426h |= Integer.MIN_VALUE;
        Object objA = this.g.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
