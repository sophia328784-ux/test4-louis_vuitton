package com.vuitton.android.domain.usecase.authentication;

import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.authentication.FinaliseSalesforceAuthenticationUseCase", f = "FinaliseSalesforceAuthenticationUseCase.kt", l = {13, 14, 15}, m = "run-gIAlu-s", v = 2)
final class FinaliseSalesforceAuthenticationUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AuthToken.Atg f49344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f49345c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f49346e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ FinaliseSalesforceAuthenticationUseCase f49347f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FinaliseSalesforceAuthenticationUseCase$run$1(FinaliseSalesforceAuthenticationUseCase finaliseSalesforceAuthenticationUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49347f = finaliseSalesforceAuthenticationUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49346e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objA = this.f49347f.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
