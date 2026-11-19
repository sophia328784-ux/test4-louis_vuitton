package com.vuitton.android.presentation.screen.authentication;

import android.net.Uri;
import com.vuitton.android.domain.usecase.authentication.oauth.RegisterUseCase;
import com.vuitton.android.presentation.screen.authentication.base.OauthCredentials;
import com.vuitton.android.presentation.screen.authentication.oauth.OauthCodeHelper;
import com.vuitton.foundation.model.domain.model.authentication.oauth.AuthenticationUrls;
import com.vuitton.foundation.model.domain.model.authentication.oauth.LoginRegistrationCredentials;
import defpackage.md;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl$proceedRegistration$1", f = "AuthenticationViewModelImpl.kt", l = {255}, m = "invokeSuspend", v = 2)
final class AuthenticationViewModelImpl$proceedRegistration$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModelImpl f53323c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationViewModelImpl$proceedRegistration$1(AuthenticationViewModelImpl authenticationViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f53323c = authenticationViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AuthenticationViewModelImpl$proceedRegistration$1(this.f53323c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AuthenticationViewModelImpl$proceedRegistration$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        AuthenticationViewModelImpl authenticationViewModelImpl = this.f53323c;
        MutableStateFlow mutableStateFlow = authenticationViewModelImpl.R;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53322b;
        String str = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            OauthCredentials oauthCredentials = authenticationViewModelImpl.W;
            OauthCodeHelper oauthCodeHelper = authenticationViewModelImpl.d;
            String str2 = oauthCredentials.f53451b;
            oauthCodeHelper.getClass();
            OauthCredentials oauthCredentialsA = OauthCredentials.a(oauthCredentials, OauthCodeHelper.a(str2), null, null, 30);
            authenticationViewModelImpl.W = oauthCredentialsA;
            RegisterUseCase registerUseCase = authenticationViewModelImpl.f53284k;
            LoginRegistrationCredentials loginRegistrationCredentials = new LoginRegistrationCredentials(oauthCredentialsA.f53450a, oauthCredentialsA.f53452c, str);
            this.f53322b = 1;
            objA = registerUseCase.a(loginRegistrationCredentials, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            AuthenticationUrls authenticationUrls = (AuthenticationUrls) objA;
            String string = authenticationUrls.f66616a;
            string.getClass();
            if (str != null && !StringsKt.w(str)) {
                Uri uri = Uri.parse(string);
                Set<String> queryParameterNames = uri.getQueryParameterNames();
                Uri.Builder builderClearQuery = uri.buildUpon().clearQuery();
                queryParameterNames.getClass();
                boolean z = false;
                for (String str3 : queryParameterNames) {
                    if (Intrinsics.c(str3, "cid")) {
                        builderClearQuery.appendQueryParameter("cid", str);
                        z = true;
                    } else {
                        List<String> queryParameters = uri.getQueryParameters(str3);
                        queryParameters.getClass();
                        Iterator<T> it = queryParameters.iterator();
                        while (it.hasNext()) {
                            builderClearQuery.appendQueryParameter(str3, (String) it.next());
                        }
                    }
                }
                if (!z) {
                    builderClearQuery.appendQueryParameter("cid", str);
                }
                string = builderClearQuery.build().toString();
                string.getClass();
            }
            authenticationViewModelImpl.N.b(string);
            authenticationViewModelImpl.W = OauthCredentials.a(authenticationViewModelImpl.W, null, authenticationUrls.f66617b, authenticationUrls.f66618c.f66625e, 7);
        }
        if (Result.a(objA) != null) {
            authenticationViewModelImpl.P.b(Unit.f71739a);
            authenticationViewModelImpl.f53276a.c("AuthenticationViewModelImpl", "Unable to register user", null);
        }
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
