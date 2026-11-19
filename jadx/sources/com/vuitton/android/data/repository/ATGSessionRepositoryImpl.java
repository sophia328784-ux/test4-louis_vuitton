package com.vuitton.android.data.repository;

import android.webkit.CookieManager;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.AuthApi;
import com.vuitton.android.data.net.cookiejar.WebkitCookieManagerProxy;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.repository.ATGSessionRepository;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.error.session.SessionException;
import defpackage.md;
import defpackage.qw0;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/repository/ATGSessionRepositoryImpl;", "Lcom/vuitton/android/domain/repository/ATGSessionRepository;", "Lcom/vuitton/android/data/api/bff/user/AuthApi;", "authApi", "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;", "webkitCookieManagerProxy", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "<init>", "(Lcom/vuitton/android/data/api/bff/user/AuthApi;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ATGSessionRepositoryImpl implements ATGSessionRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AuthApi f47122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WebkitCookieManagerProxy f47123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EnvironmentProvider f47124c;

    @Inject
    public ATGSessionRepositoryImpl(AuthApi authApi, WebkitCookieManagerProxy webkitCookieManagerProxy, EnvironmentProvider environmentProvider) {
        authApi.getClass();
        webkitCookieManagerProxy.getClass();
        environmentProvider.getClass();
        this.f47122a = authApi;
        this.f47123b = webkitCookieManagerProxy;
        this.f47124c = environmentProvider;
    }

    @Override // com.vuitton.android.domain.repository.ATGSessionRepository
    public final Unit a() {
        WebkitCookieManagerProxy webkitCookieManagerProxy = this.f47123b;
        CookieManager cookieManager = webkitCookieManagerProxy.f47048b;
        cookieManager.flush();
        cookieManager.removeSessionCookies(new qw0(webkitCookieManagerProxy, 1));
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.ATGSessionRepository
    public final Object b(String str, ContinuationImpl continuationImpl) {
        ATGSessionRepositoryImpl$loginOnActivation$1 aTGSessionRepositoryImpl$loginOnActivation$1;
        if (continuationImpl instanceof ATGSessionRepositoryImpl$loginOnActivation$1) {
            aTGSessionRepositoryImpl$loginOnActivation$1 = (ATGSessionRepositoryImpl$loginOnActivation$1) continuationImpl;
            int i2 = aTGSessionRepositoryImpl$loginOnActivation$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aTGSessionRepositoryImpl$loginOnActivation$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aTGSessionRepositoryImpl$loginOnActivation$1 = new ATGSessionRepositoryImpl$loginOnActivation$1(this, continuationImpl);
            }
        } else {
            aTGSessionRepositoryImpl$loginOnActivation$1 = new ATGSessionRepositoryImpl$loginOnActivation$1(this, continuationImpl);
        }
        Object objCreateATGCookies = aTGSessionRepositoryImpl$loginOnActivation$1.f47125b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aTGSessionRepositoryImpl$loginOnActivation$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objCreateATGCookies);
                Result.Companion companion = Result.INSTANCE;
                AuthApi authApi = this.f47122a;
                aTGSessionRepositoryImpl$loginOnActivation$1.d = 1;
                objCreateATGCookies = authApi.createATGCookies(str, aTGSessionRepositoryImpl$loginOnActivation$1);
                if (objCreateATGCookies == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objCreateATGCookies);
            }
            if (!((Response) objCreateATGCookies).f79449a.r) {
                LegacyLogger.f66205a.c("RefreshSessionError", "Error during login on activation", null);
                throw new SessionException.LoginOnActivationException();
            }
            Unit unit = Unit.f71739a;
            Result.Companion companion2 = Result.INSTANCE;
            return unit;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }

    @Override // com.vuitton.android.domain.repository.ATGSessionRepository
    public final Unit c() {
        String strM = this.f47124c.m();
        WebkitCookieManagerProxy webkitCookieManagerProxy = this.f47123b;
        webkitCookieManagerProxy.getClass();
        CookieManager cookieManager = webkitCookieManagerProxy.f47048b;
        cookieManager.flush();
        cookieManager.setCookie("https://pass-api" + strM + ".louisvuitton.com/", "SGID=; path=/;expires=Mon, 17 Oct 1900 10:47:11 UTC;");
        cookieManager.setCookie("https://pass-api" + strM + ".louisvuitton.cn/", "SGID=; path=/;expires=Mon, 17 Oct 1900 10:47:11 UTC;");
        cookieManager.flush();
        return Unit.f71739a;
    }
}
