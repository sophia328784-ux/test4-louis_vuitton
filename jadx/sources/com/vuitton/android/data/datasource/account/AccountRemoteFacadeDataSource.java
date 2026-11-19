package com.vuitton.android.data.datasource.account;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.AccountFacadeApi;
import com.vuitton.android.data.api.bff.user.ProfileApi;
import com.vuitton.android.data.datasource.endpoint.FacadeApiEndpointFactory;
import com.vuitton.android.data.dto.profile.legacy.ShortUserAccountDto;
import com.vuitton.android.data.net.atg.ATGSessionManager;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;", "", "Lcom/vuitton/android/data/datasource/endpoint/FacadeApiEndpointFactory;", "facadeApiEndpointFactory", "Lcom/vuitton/android/data/api/bff/user/AccountFacadeApi;", "accountFacadeApi", "Lcom/vuitton/android/data/api/bff/user/ProfileApi;", "profileApi", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lcom/vuitton/android/data/net/atg/ATGSessionManager;", "atgSessionManager", "<init>", "(Lcom/vuitton/android/data/datasource/endpoint/FacadeApiEndpointFactory;Lcom/vuitton/android/data/api/bff/user/AccountFacadeApi;Lcom/vuitton/android/data/api/bff/user/ProfileApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/data/net/atg/ATGSessionManager;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AccountRemoteFacadeDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FacadeApiEndpointFactory f43624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AccountFacadeApi f43625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProfileApi f43626c;
    public final AuthTokenRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ATGSessionManager f43627e;

    @Inject
    public AccountRemoteFacadeDataSource(FacadeApiEndpointFactory facadeApiEndpointFactory, AccountFacadeApi accountFacadeApi, ProfileApi profileApi, AuthTokenRepository authTokenRepository, ATGSessionManager aTGSessionManager) {
        facadeApiEndpointFactory.getClass();
        accountFacadeApi.getClass();
        profileApi.getClass();
        authTokenRepository.getClass();
        aTGSessionManager.getClass();
        this.f43624a = facadeApiEndpointFactory;
        this.f43625b = accountFacadeApi;
        this.f43626c = profileApi;
        this.d = authTokenRepository;
        this.f43627e = aTGSessionManager;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(InAppDispatch inAppDispatch, AppConfig appConfig, ContinuationImpl continuationImpl) {
        AccountRemoteFacadeDataSource$checkUserConnection$1 accountRemoteFacadeDataSource$checkUserConnection$1;
        Object failure;
        if (continuationImpl instanceof AccountRemoteFacadeDataSource$checkUserConnection$1) {
            accountRemoteFacadeDataSource$checkUserConnection$1 = (AccountRemoteFacadeDataSource$checkUserConnection$1) continuationImpl;
            int i2 = accountRemoteFacadeDataSource$checkUserConnection$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRemoteFacadeDataSource$checkUserConnection$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRemoteFacadeDataSource$checkUserConnection$1 = new AccountRemoteFacadeDataSource$checkUserConnection$1(this, continuationImpl);
            }
        } else {
            accountRemoteFacadeDataSource$checkUserConnection$1 = new AccountRemoteFacadeDataSource$checkUserConnection$1(this, continuationImpl);
        }
        Object objB = accountRemoteFacadeDataSource$checkUserConnection$1.f43628b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRemoteFacadeDataSource$checkUserConnection$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objB);
                Result.Companion companion = Result.INSTANCE;
                ATGSessionManager aTGSessionManager = this.f43627e;
                AccountRemoteFacadeDataSource$checkUserConnection$2$1 accountRemoteFacadeDataSource$checkUserConnection$2$1 = new AccountRemoteFacadeDataSource$checkUserConnection$2$1(this, inAppDispatch, appConfig, null);
                accountRemoteFacadeDataSource$checkUserConnection$1.d = 1;
                objB = aTGSessionManager.b(accountRemoteFacadeDataSource$checkUserConnection$2$1, accountRemoteFacadeDataSource$checkUserConnection$1);
                if (objB == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objB);
            }
            failure = (ShortUserAccountDto) objB;
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        return Result.a(failure) == null ? Boolean.valueOf(((ShortUserAccountDto) failure).f46700f) : Boolean.FALSE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ContinuationImpl continuationImpl) {
        AccountRemoteFacadeDataSource$getAccountDetails$1 accountRemoteFacadeDataSource$getAccountDetails$1;
        Object failure;
        if (continuationImpl instanceof AccountRemoteFacadeDataSource$getAccountDetails$1) {
            accountRemoteFacadeDataSource$getAccountDetails$1 = (AccountRemoteFacadeDataSource$getAccountDetails$1) continuationImpl;
            int i2 = accountRemoteFacadeDataSource$getAccountDetails$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRemoteFacadeDataSource$getAccountDetails$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRemoteFacadeDataSource$getAccountDetails$1 = new AccountRemoteFacadeDataSource$getAccountDetails$1(this, continuationImpl);
            }
        } else {
            accountRemoteFacadeDataSource$getAccountDetails$1 = new AccountRemoteFacadeDataSource$getAccountDetails$1(this, continuationImpl);
        }
        Object objA = accountRemoteFacadeDataSource$getAccountDetails$1.f43633b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRemoteFacadeDataSource$getAccountDetails$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objA);
                Result.Companion companion = Result.INSTANCE;
                ATGSessionManager aTGSessionManager = this.f43627e;
                AccountRemoteFacadeDataSource$getAccountDetails$2$1 accountRemoteFacadeDataSource$getAccountDetails$2$1 = new AccountRemoteFacadeDataSource$getAccountDetails$2$1(this, null);
                accountRemoteFacadeDataSource$getAccountDetails$1.d = 1;
                objA = aTGSessionManager.a(accountRemoteFacadeDataSource$getAccountDetails$2$1, accountRemoteFacadeDataSource$getAccountDetails$1);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objA);
            }
            failure = new Result((Profile) objA);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
