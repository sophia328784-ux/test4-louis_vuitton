package com.vuitton.android.domain.usecase.applink;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.applink.GetContributionLinkFromAppLinkUseCase", f = "GetContributionLinkFromAppLinkUseCase.kt", l = {13}, m = "run-gIAlu-s", v = 2)
final class GetContributionLinkFromAppLinkUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetContributionLinkFromAppLinkUseCase f49266c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetContributionLinkFromAppLinkUseCase$run$1(GetContributionLinkFromAppLinkUseCase getContributionLinkFromAppLinkUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49266c = getContributionLinkFromAppLinkUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49265b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f49266c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
