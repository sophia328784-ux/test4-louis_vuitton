package com.vuitton.android.presentation.screen.authentication;

import android.net.Uri;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase;
import com.vuitton.android.presentation.screen.authentication.base.OauthCredentials;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl$proceedCodeExchange$1", f = "AuthenticationViewModelImpl.kt", l = {288, 295}, m = "invokeSuspend", v = 2)
final class AuthenticationViewModelImpl$proceedCodeExchange$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f53316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AuthenticationViewModelImpl f53317c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModelImpl f53318e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f53319f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationViewModelImpl$proceedCodeExchange$1(AuthenticationViewModelImpl authenticationViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f53318e = authenticationViewModelImpl;
        this.f53319f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AuthenticationViewModelImpl$proceedCodeExchange$1(this.f53318e, this.f53319f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AuthenticationViewModelImpl$proceedCodeExchange$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0085  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object obj2;
        AuthenticationViewModelImpl authenticationViewModelImpl;
        AuthenticationViewModelImpl authenticationViewModelImpl2 = this.f53318e;
        MutableStateFlow mutableStateFlow = authenticationViewModelImpl2.R;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            OauthCredentials oauthCredentials = authenticationViewModelImpl2.W;
            String queryParameter = Uri.parse(this.f53319f).getQueryParameter(m.v);
            if (queryParameter == null) {
                queryParameter = "";
            }
            OauthCredentials oauthCredentialsA = OauthCredentials.a(oauthCredentials, null, null, queryParameter, 15);
            authenticationViewModelImpl2.W = oauthCredentialsA;
            AuthenticateCodeExchangeUseCase authenticateCodeExchangeUseCase = authenticationViewModelImpl2.r;
            AuthenticateCodeExchangeUseCase.Param param = new AuthenticateCodeExchangeUseCase.Param(oauthCredentialsA.f53451b, oauthCredentialsA.f53452c, oauthCredentialsA.f53453e);
            this.d = 1;
            objA = authenticateCodeExchangeUseCase.a(param, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            authenticationViewModelImpl = this.f53317c;
            obj2 = this.f53316b;
            ResultKt.b(obj);
        }
        authenticationViewModelImpl.J.b(Unit.f71739a);
        objA = obj2;
        if (Result.a(objA) != null) {
            authenticationViewModelImpl2.P.b(Unit.f71739a);
            authenticationViewModelImpl2.f53276a.c("AuthenticationViewModelImpl", "Unable to exchange codes", null);
        }
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            this.f53316b = objA;
            this.f53317c = authenticationViewModelImpl2;
            this.d = 2;
            if (authenticationViewModelImpl2.yc(true, true, this) != coroutineSingletons) {
                obj2 = objA;
                authenticationViewModelImpl = authenticationViewModelImpl2;
                authenticationViewModelImpl.J.b(Unit.f71739a);
                objA = obj2;
            }
            return coroutineSingletons;
        }
        if (Result.a(objA) != null) {
            authenticationViewModelImpl2.P.b(Unit.f71739a);
            authenticationViewModelImpl2.f53276a.c("AuthenticationViewModelImpl", "Unable to exchange codes", null);
        }
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
