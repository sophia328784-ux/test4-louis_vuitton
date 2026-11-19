package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.UserWorldwideIdApi;
import com.vuitton.android.data.datasource.account.AccountRemoteDataSource;
import com.vuitton.android.data.datasource.account.AccountRemoteFacadeDataSource;
import com.vuitton.android.data.datasource.account.AccountRemoteSalesforceDataSource;
import com.vuitton.android.data.datasource.account.AccountRemoteTwistDataSource;
import com.vuitton.android.data.datasource.address.AddressRemoteDataSource;
import com.vuitton.android.data.datasource.connectivity.ConnectedObjectLocalDataSource;
import com.vuitton.android.data.datasource.consents.UserConsentsLocalDataSource;
import com.vuitton.android.data.datasource.profile.ProfileLocalDataSource;
import com.vuitton.android.data.datasource.profile.ProfileLocalDataSource$listenProfile$$inlined$map$1;
import com.vuitton.android.data.datasource.repair.RepairLocalDataSource;
import com.vuitton.android.data.dto.account.china.ChinaConsentDataDto;
import com.vuitton.android.data.dto.profile.PasswordErrorDtoMapperKt;
import com.vuitton.android.data.dto.profile.PhoneNumberDtoMapperKt;
import com.vuitton.android.data.dto.profile.UserConsentsMapperKt;
import com.vuitton.android.data.dto.profile.twist.ProfilePwdUpdateDto;
import com.vuitton.android.data.dto.profile.twist.ProfileUpdateDto;
import com.vuitton.android.data.dto.profile.twist.UserConsentsDto;
import com.vuitton.android.data.dto.salesforce.SalesforceErrorDataDto;
import com.vuitton.android.data.dto.salesforce.SalesforceErrorDetailsDto;
import com.vuitton.android.data.dto.salesforce.SalesforceErrorDto;
import com.vuitton.android.data.dto.salesforce.SalesforceErrorResponseDto;
import com.vuitton.android.data.net.cookiejar.WebkitCookieManagerProxy;
import com.vuitton.android.domain.repository.AccountRepository;
import com.vuitton.android.domain.repository.UserPreferencesRepository;
import com.vuitton.foundation.model.domain.model.account.AccountStatus;
import com.vuitton.foundation.model.domain.model.account.AccountStatusValue;
import com.vuitton.foundation.model.domain.model.account.PhoneNumber;
import com.vuitton.foundation.model.domain.model.account.UpdateProfileInfoParam;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsentsPatch;
import com.vuitton.foundation.model.domain.model.account.consent.MarketingConsents;
import com.vuitton.foundation.model.domain.model.account.consent.MarketingConsentsPatch;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsentsPatch;
import com.vuitton.foundation.model.domain.model.certificate.CertificateChinaConsentBody;
import com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import com.vuitton.foundation.model.domain.model.profile.ProfilePwdUpdate;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.serialization.json.Json;
import okhttp3.ResponseBody;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bq\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/vuitton/android/data/repository/AccountRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AccountRepository;", "Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;", "accountRemoteTwistDataSource", "Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;", "accountRemoteFacadeDataSource", "Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;", "accountRemoteSalesforceDataSource", "Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;", "accountRemoteDataSource", "Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;", "addressRemoteDataSource", "Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;", "userConsentsLocalDataSource", "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;", "profileLocalDataSource", "Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;", "userWorldwideIdApi", "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;", "webkitCookieManagerProxy", "Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;", "connectedObjectLocalDataSource", "Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;", "repairLocalDataSource", "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "userPreferencesRepository", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;Lcom/vuitton/android/data/datasource/account/AccountRemoteSalesforceDataSource;Lcom/vuitton/android/data/datasource/account/AccountRemoteDataSource;Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lcom/vuitton/android/data/api/bff/user/UserWorldwideIdApi;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;Lcom/vuitton/android/data/datasource/repair/RepairLocalDataSource;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lkotlinx/serialization/json/Json;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AccountRepositoryImpl implements AccountRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AccountRemoteTwistDataSource f47133a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AccountRemoteFacadeDataSource f47134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AccountRemoteSalesforceDataSource f47135c;
    public final AccountRemoteDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AddressRemoteDataSource f47136e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final UserConsentsLocalDataSource f47137f;
    public final ProfileLocalDataSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final UserWorldwideIdApi f47138h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final WebkitCookieManagerProxy f47139i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ConnectedObjectLocalDataSource f47140j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RepairLocalDataSource f47141k;
    public final UserPreferencesRepository l;
    public final Json m;

    @Inject
    public AccountRepositoryImpl(AccountRemoteTwistDataSource accountRemoteTwistDataSource, AccountRemoteFacadeDataSource accountRemoteFacadeDataSource, AccountRemoteSalesforceDataSource accountRemoteSalesforceDataSource, AccountRemoteDataSource accountRemoteDataSource, AddressRemoteDataSource addressRemoteDataSource, UserConsentsLocalDataSource userConsentsLocalDataSource, ProfileLocalDataSource profileLocalDataSource, UserWorldwideIdApi userWorldwideIdApi, WebkitCookieManagerProxy webkitCookieManagerProxy, ConnectedObjectLocalDataSource connectedObjectLocalDataSource, RepairLocalDataSource repairLocalDataSource, UserPreferencesRepository userPreferencesRepository, Json json) {
        accountRemoteTwistDataSource.getClass();
        accountRemoteFacadeDataSource.getClass();
        accountRemoteSalesforceDataSource.getClass();
        accountRemoteDataSource.getClass();
        addressRemoteDataSource.getClass();
        userConsentsLocalDataSource.getClass();
        profileLocalDataSource.getClass();
        userWorldwideIdApi.getClass();
        webkitCookieManagerProxy.getClass();
        connectedObjectLocalDataSource.getClass();
        repairLocalDataSource.getClass();
        userPreferencesRepository.getClass();
        json.getClass();
        this.f47133a = accountRemoteTwistDataSource;
        this.f47134b = accountRemoteFacadeDataSource;
        this.f47135c = accountRemoteSalesforceDataSource;
        this.d = accountRemoteDataSource;
        this.f47136e = addressRemoteDataSource;
        this.f47137f = userConsentsLocalDataSource;
        this.g = profileLocalDataSource;
        this.f47138h = userWorldwideIdApi;
        this.f47139i = webkitCookieManagerProxy;
        this.f47140j = connectedObjectLocalDataSource;
        this.f47141k = repairLocalDataSource;
        this.l = userPreferencesRepository;
        this.m = json;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object p(AccountRepositoryImpl accountRepositoryImpl, boolean z, ContinuationImpl continuationImpl) {
        AccountRepositoryImpl$getAndCacheAccountDetails$1 accountRepositoryImpl$getAndCacheAccountDetails$1;
        if (continuationImpl instanceof AccountRepositoryImpl$getAndCacheAccountDetails$1) {
            accountRepositoryImpl$getAndCacheAccountDetails$1 = (AccountRepositoryImpl$getAndCacheAccountDetails$1) continuationImpl;
            int i2 = accountRepositoryImpl$getAndCacheAccountDetails$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRepositoryImpl$getAndCacheAccountDetails$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRepositoryImpl$getAndCacheAccountDetails$1 = new AccountRepositoryImpl$getAndCacheAccountDetails$1(accountRepositoryImpl, continuationImpl);
            }
        } else {
            accountRepositoryImpl$getAndCacheAccountDetails$1 = new AccountRepositoryImpl$getAndCacheAccountDetails$1(accountRepositoryImpl, continuationImpl);
        }
        Object objD = accountRepositoryImpl$getAndCacheAccountDetails$1.f47155b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRepositoryImpl$getAndCacheAccountDetails$1.d;
        if (i3 == 0) {
            ResultKt.b(objD);
            AccountRepositoryImpl$getAndCacheAccountDetails$2 accountRepositoryImpl$getAndCacheAccountDetails$2 = new AccountRepositoryImpl$getAndCacheAccountDetails$2(z, accountRepositoryImpl, null);
            accountRepositoryImpl$getAndCacheAccountDetails$1.d = 1;
            objD = CoroutineScopeKt.d(accountRepositoryImpl$getAndCacheAccountDetails$2, accountRepositoryImpl$getAndCacheAccountDetails$1);
            if (objD == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objD);
        }
        return ((Result) objD).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object q(AccountRepositoryImpl accountRepositoryImpl, ContinuationImpl continuationImpl) {
        AccountRepositoryImpl$getAndSaveConsents$1 accountRepositoryImpl$getAndSaveConsents$1;
        Object objE;
        if (continuationImpl instanceof AccountRepositoryImpl$getAndSaveConsents$1) {
            accountRepositoryImpl$getAndSaveConsents$1 = (AccountRepositoryImpl$getAndSaveConsents$1) continuationImpl;
            int i2 = accountRepositoryImpl$getAndSaveConsents$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRepositoryImpl$getAndSaveConsents$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRepositoryImpl$getAndSaveConsents$1 = new AccountRepositoryImpl$getAndSaveConsents$1(accountRepositoryImpl, continuationImpl);
            }
        } else {
            accountRepositoryImpl$getAndSaveConsents$1 = new AccountRepositoryImpl$getAndSaveConsents$1(accountRepositoryImpl, continuationImpl);
        }
        Object obj = accountRepositoryImpl$getAndSaveConsents$1.f47168b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRepositoryImpl$getAndSaveConsents$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            AccountRemoteTwistDataSource accountRemoteTwistDataSource = accountRepositoryImpl.f47133a;
            accountRepositoryImpl$getAndSaveConsents$1.d = 1;
            objE = accountRemoteTwistDataSource.e(accountRepositoryImpl$getAndSaveConsents$1);
            if (objE == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objE = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objE instanceof Result.Failure)) {
            try {
                objE = UserConsentsMapperKt.b((UserConsentsDto) objE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objE = new Result.Failure(th);
            }
        }
        if (!(objE instanceof Result.Failure)) {
            accountRepositoryImpl.f47137f.b((UserConsents) objE);
        }
        return objE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final Object a(ProfilePwdUpdate profilePwdUpdate, ContinuationImpl continuationImpl) {
        AccountRepositoryImpl$updatePassword$1 accountRepositoryImpl$updatePassword$1;
        Object failure;
        Object objH;
        String strString;
        SalesforceErrorResponseDto salesforceErrorResponseDto;
        SalesforceErrorDataDto salesforceErrorDataDto;
        if (continuationImpl instanceof AccountRepositoryImpl$updatePassword$1) {
            accountRepositoryImpl$updatePassword$1 = (AccountRepositoryImpl$updatePassword$1) continuationImpl;
            int i2 = accountRepositoryImpl$updatePassword$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRepositoryImpl$updatePassword$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRepositoryImpl$updatePassword$1 = new AccountRepositoryImpl$updatePassword$1(this, continuationImpl);
            }
        } else {
            accountRepositoryImpl$updatePassword$1 = new AccountRepositoryImpl$updatePassword$1(this, continuationImpl);
        }
        Object obj = accountRepositoryImpl$updatePassword$1.f47189b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRepositoryImpl$updatePassword$1.d;
        String str = null;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                AccountRemoteTwistDataSource accountRemoteTwistDataSource = this.f47133a;
                profilePwdUpdate.getClass();
                ProfilePwdUpdateDto profilePwdUpdateDto = new ProfilePwdUpdateDto(profilePwdUpdate.f68178a, profilePwdUpdate.f68179b);
                accountRepositoryImpl$updatePassword$1.d = 1;
                objH = accountRemoteTwistDataSource.h(profilePwdUpdateDto, accountRepositoryImpl$updatePassword$1);
                if (objH == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objH = ((Result) obj).f71708b;
            }
            ResultKt.b(objH);
            Response response = (Response) objH;
            if (response.f79449a.r) {
                failure = new Result(Unit.f71739a);
                Throwable thA = Result.a(failure);
                if (thA != null) {
                    if (thA instanceof CancellationException) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                return ((Result) failure).f71708b;
            }
            ResponseBody responseBody = response.f79451c;
            if (responseBody == null || (strString = responseBody.string()) == null) {
                throw PasswordErrorDtoMapperKt.a(null);
            }
            Json json = this.m;
            json.getClass();
            SalesforceErrorDetailsDto salesforceErrorDetailsDto = ((SalesforceErrorDto) json.b(SalesforceErrorDto.INSTANCE.serializer(), strString)).f46765a;
            if (salesforceErrorDetailsDto != null && (salesforceErrorResponseDto = salesforceErrorDetailsDto.f46763a) != null && (salesforceErrorDataDto = salesforceErrorResponseDto.f46767a) != null) {
                str = salesforceErrorDataDto.f46761b;
            }
            throw PasswordErrorDtoMapperKt.a(str);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final Object b(ContinuationImpl continuationImpl) {
        AccountRepositoryImpl$updateContactId$1 accountRepositoryImpl$updateContactId$1;
        Object failure;
        Object obj;
        UserPreferencesRepository userPreferencesRepository;
        if (continuationImpl instanceof AccountRepositoryImpl$updateContactId$1) {
            accountRepositoryImpl$updateContactId$1 = (AccountRepositoryImpl$updateContactId$1) continuationImpl;
            int i2 = accountRepositoryImpl$updateContactId$1.f47186e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRepositoryImpl$updateContactId$1.f47186e = i2 - Integer.MIN_VALUE;
            } else {
                accountRepositoryImpl$updateContactId$1 = new AccountRepositoryImpl$updateContactId$1(this, continuationImpl);
            }
        } else {
            accountRepositoryImpl$updateContactId$1 = new AccountRepositoryImpl$updateContactId$1(this, continuationImpl);
        }
        Object obj2 = accountRepositoryImpl$updateContactId$1.f47185c;
        Object obj3 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRepositoryImpl$updateContactId$1.f47186e;
        try {
            if (i3 == 0) {
                ResultKt.b(obj2);
                Result.Companion companion = Result.INSTANCE;
                UserPreferencesRepository userPreferencesRepository2 = this.l;
                accountRepositoryImpl$updateContactId$1.f47184b = userPreferencesRepository2;
                accountRepositoryImpl$updateContactId$1.f47186e = 1;
                Object objJ = j(accountRepositoryImpl$updateContactId$1);
                if (objJ == obj3) {
                    return obj3;
                }
                obj = objJ;
                userPreferencesRepository = userPreferencesRepository2;
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                userPreferencesRepository = accountRepositoryImpl$updateContactId$1.f47184b;
                ResultKt.b(obj2);
                obj = ((Result) obj2).f71708b;
            }
            ResultKt.b(obj);
            userPreferencesRepository.e(((Profile.ContactId) obj).f68174a);
            failure = new Result(Unit.f71739a);
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

    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final ProfileLocalDataSource$listenProfile$$inlined$map$1 c() {
        ProfileLocalDataSource profileLocalDataSource = this.g;
        return new ProfileLocalDataSource$listenProfile$$inlined$map$1(profileLocalDataSource.f44238a.getD(), profileLocalDataSource);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final Object d(ContinuationImpl continuationImpl) {
        AccountRepositoryImpl$getAccountId$1 accountRepositoryImpl$getAccountId$1;
        if (continuationImpl instanceof AccountRepositoryImpl$getAccountId$1) {
            accountRepositoryImpl$getAccountId$1 = (AccountRepositoryImpl$getAccountId$1) continuationImpl;
            int i2 = accountRepositoryImpl$getAccountId$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRepositoryImpl$getAccountId$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRepositoryImpl$getAccountId$1 = new AccountRepositoryImpl$getAccountId$1(this, continuationImpl);
            }
        } else {
            accountRepositoryImpl$getAccountId$1 = new AccountRepositoryImpl$getAccountId$1(this, continuationImpl);
        }
        Object obj = accountRepositoryImpl$getAccountId$1.f47151b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRepositoryImpl$getAccountId$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            accountRepositoryImpl$getAccountId$1.d = 1;
            Object objC = this.f47133a.c(accountRepositoryImpl$getAccountId$1);
            return objC == coroutineSingletons ? coroutineSingletons : objC;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final Object e(ContinuationImpl continuationImpl) {
        AccountRepositoryImpl$deleteAccount$1 accountRepositoryImpl$deleteAccount$1;
        if (continuationImpl instanceof AccountRepositoryImpl$deleteAccount$1) {
            accountRepositoryImpl$deleteAccount$1 = (AccountRepositoryImpl$deleteAccount$1) continuationImpl;
            int i2 = accountRepositoryImpl$deleteAccount$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRepositoryImpl$deleteAccount$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRepositoryImpl$deleteAccount$1 = new AccountRepositoryImpl$deleteAccount$1(this, continuationImpl);
            }
        } else {
            accountRepositoryImpl$deleteAccount$1 = new AccountRepositoryImpl$deleteAccount$1(this, continuationImpl);
        }
        Object obj = accountRepositoryImpl$deleteAccount$1.f47144b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRepositoryImpl$deleteAccount$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            accountRepositoryImpl$deleteAccount$1.d = 1;
            Object objA = this.d.a(accountRepositoryImpl$deleteAccount$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final Object f(String str, ContinuationImpl continuationImpl) {
        AccountRepositoryImpl$getAccountStatus$1 accountRepositoryImpl$getAccountStatus$1;
        Object failure;
        Object objD;
        if (continuationImpl instanceof AccountRepositoryImpl$getAccountStatus$1) {
            accountRepositoryImpl$getAccountStatus$1 = (AccountRepositoryImpl$getAccountStatus$1) continuationImpl;
            int i2 = accountRepositoryImpl$getAccountStatus$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRepositoryImpl$getAccountStatus$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRepositoryImpl$getAccountStatus$1 = new AccountRepositoryImpl$getAccountStatus$1(this, continuationImpl);
            }
        } else {
            accountRepositoryImpl$getAccountStatus$1 = new AccountRepositoryImpl$getAccountStatus$1(this, continuationImpl);
        }
        Object obj = accountRepositoryImpl$getAccountStatus$1.f47153b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRepositoryImpl$getAccountStatus$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                AccountRemoteTwistDataSource accountRemoteTwistDataSource = this.f47133a;
                accountRepositoryImpl$getAccountStatus$1.d = 1;
                objD = accountRemoteTwistDataSource.d(str, accountRepositoryImpl$getAccountStatus$1);
                if (objD == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objD = ((Result) obj).f71708b;
            }
            AccountStatus accountStatus = new AccountStatus(AccountStatusValue.UNKNOWN, null, 2, null);
            Result.Companion companion2 = Result.INSTANCE;
            if (objD instanceof Result.Failure) {
                objD = accountStatus;
            }
            failure = new Result((AccountStatus) objD);
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final Object g(CertificateChinaConsentBody certificateChinaConsentBody, ContinuationImpl continuationImpl) {
        AccountRepositoryImpl$addCNConsent$1 accountRepositoryImpl$addCNConsent$1;
        if (continuationImpl instanceof AccountRepositoryImpl$addCNConsent$1) {
            accountRepositoryImpl$addCNConsent$1 = (AccountRepositoryImpl$addCNConsent$1) continuationImpl;
            int i2 = accountRepositoryImpl$addCNConsent$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRepositoryImpl$addCNConsent$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRepositoryImpl$addCNConsent$1 = new AccountRepositoryImpl$addCNConsent$1(this, continuationImpl);
            }
        } else {
            accountRepositoryImpl$addCNConsent$1 = new AccountRepositoryImpl$addCNConsent$1(this, continuationImpl);
        }
        Object obj = accountRepositoryImpl$addCNConsent$1.f47142b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRepositoryImpl$addCNConsent$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        certificateChinaConsentBody.getClass();
        ChinaConsentDataDto chinaConsentDataDto = new ChinaConsentDataDto(certificateChinaConsentBody.f67059a, certificateChinaConsentBody.f67060b);
        accountRepositoryImpl$addCNConsent$1.d = 1;
        Object objA = this.f47133a.a(chinaConsentDataDto, accountRepositoryImpl$addCNConsent$1);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }

    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final Object h(InAppDispatch inAppDispatch, AppConfig appConfig, SuspendLambda suspendLambda) {
        Object objA = this.f47134b.a(inAppDispatch, appConfig, suspendLambda);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (objA != coroutineSingletons) {
            objA = Unit.f71739a;
        }
        return objA == coroutineSingletons ? objA : Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final Object i(UpdateProfileInfoParam updateProfileInfoParam, ContinuationImpl continuationImpl) {
        AccountRepositoryImpl$updateMainInformation$1 accountRepositoryImpl$updateMainInformation$1;
        if (continuationImpl instanceof AccountRepositoryImpl$updateMainInformation$1) {
            accountRepositoryImpl$updateMainInformation$1 = (AccountRepositoryImpl$updateMainInformation$1) continuationImpl;
            int i2 = accountRepositoryImpl$updateMainInformation$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRepositoryImpl$updateMainInformation$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRepositoryImpl$updateMainInformation$1 = new AccountRepositoryImpl$updateMainInformation$1(this, continuationImpl);
            }
        } else {
            accountRepositoryImpl$updateMainInformation$1 = new AccountRepositoryImpl$updateMainInformation$1(this, continuationImpl);
        }
        Object obj = accountRepositoryImpl$updateMainInformation$1.f47187b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRepositoryImpl$updateMainInformation$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        updateProfileInfoParam.getClass();
        String str = updateProfileInfoParam.f66235a;
        String str2 = updateProfileInfoParam.f66236b;
        String str3 = updateProfileInfoParam.f66237c;
        String str4 = updateProfileInfoParam.d;
        String str5 = updateProfileInfoParam.f66238e;
        String str6 = updateProfileInfoParam.f66239f;
        String str7 = updateProfileInfoParam.g;
        String str8 = updateProfileInfoParam.f66241i;
        String str9 = updateProfileInfoParam.f66242j;
        PhoneNumber phoneNumber = updateProfileInfoParam.f66243k;
        ProfileUpdateDto profileUpdateDto = new ProfileUpdateDto(str, str2, str3, str4, str5, str6, str7, str8, str9, phoneNumber != null ? CollectionsKt.O(PhoneNumberDtoMapperKt.a(phoneNumber)) : null);
        accountRepositoryImpl$updateMainInformation$1.d = 1;
        Object objG = this.f47133a.g(profileUpdateDto, accountRepositoryImpl$updateMainInformation$1);
        return objG == coroutineSingletons ? coroutineSingletons : objG;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final Object j(ContinuationImpl continuationImpl) {
        AccountRepositoryImpl$getContactId$1 accountRepositoryImpl$getContactId$1;
        if (continuationImpl instanceof AccountRepositoryImpl$getContactId$1) {
            accountRepositoryImpl$getContactId$1 = (AccountRepositoryImpl$getContactId$1) continuationImpl;
            int i2 = accountRepositoryImpl$getContactId$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRepositoryImpl$getContactId$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRepositoryImpl$getContactId$1 = new AccountRepositoryImpl$getContactId$1(this, continuationImpl);
            }
        } else {
            accountRepositoryImpl$getContactId$1 = new AccountRepositoryImpl$getContactId$1(this, continuationImpl);
        }
        Object obj = accountRepositoryImpl$getContactId$1.f47170b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRepositoryImpl$getContactId$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            accountRepositoryImpl$getContactId$1.d = 1;
            Object objA = this.f47135c.a(accountRepositoryImpl$getContactId$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final Object k(UserConsents userConsents, boolean z, ContinuationImpl continuationImpl) {
        AccountRepositoryImpl$patchUserConsents$1 accountRepositoryImpl$patchUserConsents$1;
        UserConsents userConsents2;
        boolean z2;
        UserConsents userConsents3;
        Object obj;
        Object obj2;
        UserConsents userConsents4;
        UserConsents userConsents5 = userConsents;
        if (continuationImpl instanceof AccountRepositoryImpl$patchUserConsents$1) {
            accountRepositoryImpl$patchUserConsents$1 = (AccountRepositoryImpl$patchUserConsents$1) continuationImpl;
            int i2 = accountRepositoryImpl$patchUserConsents$1.f47180h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRepositoryImpl$patchUserConsents$1.f47180h = i2 - Integer.MIN_VALUE;
            } else {
                accountRepositoryImpl$patchUserConsents$1 = new AccountRepositoryImpl$patchUserConsents$1(this, continuationImpl);
            }
        } else {
            accountRepositoryImpl$patchUserConsents$1 = new AccountRepositoryImpl$patchUserConsents$1(this, continuationImpl);
        }
        Object obj3 = accountRepositoryImpl$patchUserConsents$1.f47179f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRepositoryImpl$patchUserConsents$1.f47180h;
        UserConsentsLocalDataSource userConsentsLocalDataSource = this.f47137f;
        if (i3 != 0) {
            if (i3 == 1) {
                boolean z3 = accountRepositoryImpl$patchUserConsents$1.f47178e;
                userConsents3 = accountRepositoryImpl$patchUserConsents$1.f47177c;
                UserConsents userConsents6 = accountRepositoryImpl$patchUserConsents$1.f47176b;
                ResultKt.b(obj3);
                obj = ((Result) obj3).f71708b;
                z2 = z3;
                userConsents5 = userConsents6;
            } else {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                obj2 = accountRepositoryImpl$patchUserConsents$1.d;
                userConsents4 = accountRepositoryImpl$patchUserConsents$1.f47177c;
                ResultKt.b(obj3);
                ((Result) obj3).getClass();
            }
            obj = obj2;
            userConsents3 = userConsents4;
            if (Result.a(obj) != null && userConsents3 != null) {
                userConsentsLocalDataSource.b(userConsents3);
            }
            return obj;
        }
        ResultKt.b(obj3);
        Result resultA = userConsentsLocalDataSource.a();
        if (resultA != null) {
            Object obj4 = resultA.f71708b;
            if (obj4 instanceof Result.Failure) {
                obj4 = null;
            }
            userConsents2 = (UserConsents) obj4;
        } else {
            userConsents2 = null;
        }
        userConsentsLocalDataSource.b(userConsents5);
        KisaConsents kisaConsents = userConsents5.f66292a;
        KisaConsentsPatch kisaConsentsPatch = kisaConsents != null ? new KisaConsentsPatch(kisaConsents.f66268a, kisaConsents.f66269b, kisaConsents.f66270c, kisaConsents.d, kisaConsents.f66271e, kisaConsents.f66272f, kisaConsents.g, kisaConsents.f66273h) : null;
        MarketingConsents marketingConsents = userConsents5.f66293b;
        UserConsentsPatch userConsentsPatch = new UserConsentsPatch(kisaConsentsPatch, marketingConsents != null ? new MarketingConsentsPatch(marketingConsents.f66281a, marketingConsents.f66282b, marketingConsents.f66283c, marketingConsents.d, marketingConsents.f66284e, marketingConsents.f66285f, marketingConsents.g) : null);
        accountRepositoryImpl$patchUserConsents$1.f47176b = userConsents5;
        accountRepositoryImpl$patchUserConsents$1.f47177c = userConsents2;
        z2 = z;
        accountRepositoryImpl$patchUserConsents$1.f47178e = z2;
        accountRepositoryImpl$patchUserConsents$1.f47180h = 1;
        Object objF = this.f47133a.f(userConsentsPatch, accountRepositoryImpl$patchUserConsents$1);
        if (objF != coroutineSingletons) {
            userConsents3 = userConsents2;
            obj = objF;
        }
        return coroutineSingletons;
        Result.Companion companion = Result.INSTANCE;
        if (!(obj instanceof Result.Failure)) {
            if (z2) {
                KisaConsents kisaConsents2 = userConsents5.f66292a;
                Boolean bool = kisaConsents2 != null ? kisaConsents2.f66269b : null;
                accountRepositoryImpl$patchUserConsents$1.f47176b = null;
                accountRepositoryImpl$patchUserConsents$1.f47177c = userConsents3;
                accountRepositoryImpl$patchUserConsents$1.d = obj;
                accountRepositoryImpl$patchUserConsents$1.f47178e = z2;
                accountRepositoryImpl$patchUserConsents$1.f47180h = 2;
                if (this.g.e(bool, accountRepositoryImpl$patchUserConsents$1) != coroutineSingletons) {
                    obj2 = obj;
                    userConsents4 = userConsents3;
                    obj = obj2;
                    userConsents3 = userConsents4;
                }
                return coroutineSingletons;
            }
        }
        if (Result.a(obj) != null) {
            userConsentsLocalDataSource.b(userConsents3);
        }
        return obj;
    }

    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final ResultStrategyLazy l() {
        return new ResultStrategyLazy(new AccountRepositoryImpl$getUserConsents$2(this, null), new AccountRepositoryImpl$getUserConsents$3(1, this.f47137f, UserConsentsLocalDataSource.class, "getUserConsentsFromSharedPref", "getUserConsentsFromSharedPref-xLWZpok()Lkotlin/Result;", 4));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final Object m(boolean z, ContinuationImpl continuationImpl) {
        AccountRepositoryImpl$resetLoginDetails$1 accountRepositoryImpl$resetLoginDetails$1;
        if (continuationImpl instanceof AccountRepositoryImpl$resetLoginDetails$1) {
            accountRepositoryImpl$resetLoginDetails$1 = (AccountRepositoryImpl$resetLoginDetails$1) continuationImpl;
            int i2 = accountRepositoryImpl$resetLoginDetails$1.f47183e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRepositoryImpl$resetLoginDetails$1.f47183e = i2 - Integer.MIN_VALUE;
            } else {
                accountRepositoryImpl$resetLoginDetails$1 = new AccountRepositoryImpl$resetLoginDetails$1(this, continuationImpl);
            }
        } else {
            accountRepositoryImpl$resetLoginDetails$1 = new AccountRepositoryImpl$resetLoginDetails$1(this, continuationImpl);
        }
        Object obj = accountRepositoryImpl$resetLoginDetails$1.f47182c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRepositoryImpl$resetLoginDetails$1.f47183e;
        if (i3 == 0) {
            ResultKt.b(obj);
            this.l.f();
            accountRepositoryImpl$resetLoginDetails$1.f47181b = z;
            accountRepositoryImpl$resetLoginDetails$1.f47183e = 1;
            if (this.g.a(accountRepositoryImpl$resetLoginDetails$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = accountRepositoryImpl$resetLoginDetails$1.f47181b;
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        this.f47140j.f44053a = null;
        this.f47141k.f44268a.clear();
        if (z) {
            this.f47139i.a();
        }
        Object obj2 = this.f47137f.f44054a.get();
        obj2.getClass();
        SharedPreferences.Editor editorEdit = ((SharedPreferences) obj2).edit();
        editorEdit.remove("USER_CONSENT");
        editorEdit.apply();
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.domain.repository.AccountRepository
    public final ResultStrategyLazy n(boolean z, boolean z2) {
        return new ResultStrategyLazy(new AccountRepositoryImpl$getAccountDetails$2(z2, this, z, null), new AccountRepositoryImpl$getAccountDetails$3(z2, this, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
    
        if (r6 == r1) goto L25;
     */
    @Override // com.vuitton.android.domain.repository.AccountRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object o(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.vuitton.android.data.repository.AccountRepositoryImpl$getUserWorldwideId$1
            if (r0 == 0) goto L13
            r0 = r6
            com.vuitton.android.data.repository.AccountRepositoryImpl$getUserWorldwideId$1 r0 = (com.vuitton.android.data.repository.AccountRepositoryImpl$getUserWorldwideId$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.AccountRepositoryImpl$getUserWorldwideId$1 r0 = new com.vuitton.android.data.repository.AccountRepositoryImpl$getUserWorldwideId$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f47174b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            kotlin.ResultKt.b(r6)     // Catch: java.lang.Throwable -> L75
            goto L5f
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L31:
            kotlin.ResultKt.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.f71708b
            goto L47
        L39:
            kotlin.ResultKt.b(r6)
            r0.d = r4
            com.vuitton.android.data.datasource.account.AccountRemoteTwistDataSource r6 = r5.f47133a
            java.lang.Object r6 = r6.c(r0)
            if (r6 != r1) goto L47
            goto L5e
        L47:
            java.lang.Throwable r2 = kotlin.Result.a(r6)
            if (r2 != 0) goto L9a
            kotlin.ResultKt.b(r6)
            com.vuitton.foundation.model.domain.model.profile.Profile$AccountId r6 = (com.vuitton.foundation.model.domain.model.profile.Profile.AccountId) r6
            java.lang.String r6 = r6.f68173a
            com.vuitton.android.data.api.bff.user.UserWorldwideIdApi r5 = r5.f47138h     // Catch: java.lang.Throwable -> L75
            r0.d = r3     // Catch: java.lang.Throwable -> L75
            java.lang.Object r6 = r5.getUserWorldwideId(r6, r0)     // Catch: java.lang.Throwable -> L75
            if (r6 != r1) goto L5f
        L5e:
            return r1
        L5f:
            com.vuitton.android.data.dto.account.user.WorldwideIdDto r6 = (com.vuitton.android.data.dto.account.user.WorldwideIdDto) r6     // Catch: java.lang.Throwable -> L75
            r6.getClass()     // Catch: java.lang.Throwable -> L75
            java.lang.String r5 = r6.f44442a     // Catch: java.lang.Throwable -> L75
            if (r5 != 0) goto L6a
            java.lang.String r5 = ""
        L6a:
            com.vuitton.foundation.model.domain.model.account.WorldwideId r6 = new com.vuitton.foundation.model.domain.model.account.WorldwideId     // Catch: java.lang.Throwable -> L75
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L75
            kotlin.Result r5 = new kotlin.Result     // Catch: java.lang.Throwable -> L75
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L75
            goto L7e
        L75:
            r5 = move-exception
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
            r5 = r6
        L7e:
            java.lang.Throwable r6 = kotlin.Result.a(r5)
            if (r6 != 0) goto L85
            goto L94
        L85:
            boolean r5 = r6 instanceof java.util.concurrent.CancellationException
            if (r5 != 0) goto L99
            kotlin.Result$Failure r5 = new kotlin.Result$Failure
            r5.<init>(r6)
            kotlin.Result r6 = new kotlin.Result
            r6.<init>(r5)
            r5 = r6
        L94:
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.f71708b
            return r5
        L99:
            throw r6
        L9a:
            kotlin.Result$Failure r5 = new kotlin.Result$Failure
            r5.<init>(r2)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.AccountRepositoryImpl.o(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
