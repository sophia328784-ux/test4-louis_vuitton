package com.vuitton.android.data.datasource.account;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.ProfileApi;
import com.vuitton.android.data.api.bff.user.TwistAccountApi;
import com.vuitton.android.data.dto.account.china.ChinaConsentDataDto;
import com.vuitton.android.data.dto.profile.AccountStatusMapperKt;
import com.vuitton.android.data.dto.profile.ProfileDto;
import com.vuitton.android.data.dto.profile.UserConsentsMapperKt;
import com.vuitton.android.data.dto.profile.twist.AccountStatusBodyDto;
import com.vuitton.android.data.dto.profile.twist.AccountStatusDto;
import com.vuitton.android.data.dto.profile.twist.AccountStatusValueDto;
import com.vuitton.android.data.dto.profile.twist.ProfilePwdUpdateDto;
import com.vuitton.android.data.dto.profile.twist.ProfileUpdateDto;
import com.vuitton.android.data.dto.profile.twist.UserConsentsDto;
import com.vuitton.android.data.dto.profile.twist.UserConsentsPatchDto;
import com.vuitton.android.data.exception.NetworkExceptionMapperKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.account.AccountStatus;
import com.vuitton.foundation.model.domain.model.account.AccountStatusValue;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsentsPatch;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import com.vuitton.foundation.util.ResultExtKt;
import defpackage.md;
import defpackage.v40;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScopeKt;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/api/bff/user/TwistAccountApi;", "twistAccountApi", "Lcom/vuitton/android/data/api/bff/user/ProfileApi;", "profileApi", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/TwistAccountApi;Lcom/vuitton/android/data/api/bff/user/ProfileApi;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AccountRemoteTwistDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f43645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TwistAccountApi f43646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProfileApi f43647c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public AccountRemoteTwistDataSource(Logger logger, TwistAccountApi twistAccountApi, ProfileApi profileApi) {
        logger.getClass();
        twistAccountApi.getClass();
        profileApi.getClass();
        this.f43645a = logger;
        this.f43646b = twistAccountApi;
        this.f43647c = profileApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ChinaConsentDataDto chinaConsentDataDto, ContinuationImpl continuationImpl) {
        AccountRemoteTwistDataSource$addCNConsent$1 accountRemoteTwistDataSource$addCNConsent$1;
        Object failure;
        if (continuationImpl instanceof AccountRemoteTwistDataSource$addCNConsent$1) {
            accountRemoteTwistDataSource$addCNConsent$1 = (AccountRemoteTwistDataSource$addCNConsent$1) continuationImpl;
            int i2 = accountRemoteTwistDataSource$addCNConsent$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRemoteTwistDataSource$addCNConsent$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRemoteTwistDataSource$addCNConsent$1 = new AccountRemoteTwistDataSource$addCNConsent$1(this, continuationImpl);
            }
        } else {
            accountRemoteTwistDataSource$addCNConsent$1 = new AccountRemoteTwistDataSource$addCNConsent$1(this, continuationImpl);
        }
        Object obj = accountRemoteTwistDataSource$addCNConsent$1.f43648b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRemoteTwistDataSource$addCNConsent$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                TwistAccountApi twistAccountApi = this.f43646b;
                accountRemoteTwistDataSource$addCNConsent$1.d = 1;
                if (twistAccountApi.addConsentChina(chinaConsentDataDto, accountRemoteTwistDataSource$addCNConsent$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ContinuationImpl continuationImpl) {
        AccountRemoteTwistDataSource$getAccountDetails$1 accountRemoteTwistDataSource$getAccountDetails$1;
        Object failure;
        if (continuationImpl instanceof AccountRemoteTwistDataSource$getAccountDetails$1) {
            accountRemoteTwistDataSource$getAccountDetails$1 = (AccountRemoteTwistDataSource$getAccountDetails$1) continuationImpl;
            int i2 = accountRemoteTwistDataSource$getAccountDetails$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRemoteTwistDataSource$getAccountDetails$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRemoteTwistDataSource$getAccountDetails$1 = new AccountRemoteTwistDataSource$getAccountDetails$1(this, continuationImpl);
            }
        } else {
            accountRemoteTwistDataSource$getAccountDetails$1 = new AccountRemoteTwistDataSource$getAccountDetails$1(this, continuationImpl);
        }
        Object objD = accountRemoteTwistDataSource$getAccountDetails$1.f43650b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRemoteTwistDataSource$getAccountDetails$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objD);
                Result.Companion companion = Result.INSTANCE;
                AccountRemoteTwistDataSource$getAccountDetails$2$1 accountRemoteTwistDataSource$getAccountDetails$2$1 = new AccountRemoteTwistDataSource$getAccountDetails$2$1(this, null);
                accountRemoteTwistDataSource$getAccountDetails$1.d = 1;
                objD = CoroutineScopeKt.d(accountRemoteTwistDataSource$getAccountDetails$2$1, accountRemoteTwistDataSource$getAccountDetails$1);
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
            failure = new Result((Profile) objD);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(ContinuationImpl continuationImpl) throws Throwable {
        AccountRemoteTwistDataSource$getAccountId$1 accountRemoteTwistDataSource$getAccountId$1;
        Object failure;
        if (continuationImpl instanceof AccountRemoteTwistDataSource$getAccountId$1) {
            accountRemoteTwistDataSource$getAccountId$1 = (AccountRemoteTwistDataSource$getAccountId$1) continuationImpl;
            int i2 = accountRemoteTwistDataSource$getAccountId$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRemoteTwistDataSource$getAccountId$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRemoteTwistDataSource$getAccountId$1 = new AccountRemoteTwistDataSource$getAccountId$1(this, continuationImpl);
            }
        } else {
            accountRemoteTwistDataSource$getAccountId$1 = new AccountRemoteTwistDataSource$getAccountId$1(this, continuationImpl);
        }
        Object profile = accountRemoteTwistDataSource$getAccountId$1.f43658b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRemoteTwistDataSource$getAccountId$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(profile);
                Result.Companion companion = Result.INSTANCE;
                ProfileApi profileApi = this.f43647c;
                accountRemoteTwistDataSource$getAccountId$1.d = 1;
                profile = profileApi.getProfile(accountRemoteTwistDataSource$getAccountId$1);
                if (profile == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(profile);
            }
            String str = ((ProfileDto) profile).n;
            str.getClass();
            failure = new Result(new Profile.AccountId(str));
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
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 != null) {
            this.f43645a.d("AccountRemoteTwistDataSource", "Unable to retrieve account id: " + thA2.getMessage(), null);
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0087  */
    /* JADX WARN: Code duplicated, block: B:40:0x008b  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:43:0x00a0, please report this as an issue */
    public final Object d(String str, ContinuationImpl continuationImpl) throws Throwable {
        AccountRemoteTwistDataSource$getAccountStatus$1 accountRemoteTwistDataSource$getAccountStatus$1;
        Object failure;
        Throwable thA;
        Throwable thA2;
        AccountStatus accountStatus;
        AccountStatusValue accountStatusValue;
        if (continuationImpl instanceof AccountRemoteTwistDataSource$getAccountStatus$1) {
            accountRemoteTwistDataSource$getAccountStatus$1 = (AccountRemoteTwistDataSource$getAccountStatus$1) continuationImpl;
            int i2 = accountRemoteTwistDataSource$getAccountStatus$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRemoteTwistDataSource$getAccountStatus$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRemoteTwistDataSource$getAccountStatus$1 = new AccountRemoteTwistDataSource$getAccountStatus$1(this, continuationImpl);
            }
        } else {
            accountRemoteTwistDataSource$getAccountStatus$1 = new AccountRemoteTwistDataSource$getAccountStatus$1(this, continuationImpl);
        }
        Object accountStatus2 = accountRemoteTwistDataSource$getAccountStatus$1.f43660b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRemoteTwistDataSource$getAccountStatus$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(accountStatus2);
                Result.Companion companion = Result.INSTANCE;
                TwistAccountApi twistAccountApi = this.f43646b;
                AccountStatusBodyDto accountStatusBodyDto = new AccountStatusBodyDto(str);
                accountRemoteTwistDataSource$getAccountStatus$1.d = 1;
                accountStatus2 = twistAccountApi.getAccountStatus(accountStatusBodyDto, accountRemoteTwistDataSource$getAccountStatus$1);
                if (accountStatus2 == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(accountStatus2);
            }
            AccountStatusDto accountStatusDto = (AccountStatusDto) accountStatus2;
            accountStatusDto.getClass();
            AccountStatusValueDto accountStatusValueDto = accountStatusDto.f46707a;
            accountStatusValueDto.getClass();
            int i4 = AccountStatusMapperKt.WhenMappings.f46673a[accountStatusValueDto.ordinal()];
            if (i4 == 1) {
                accountStatusValue = AccountStatusValue.UNKNOWN;
            } else {
                if (i4 != 2) {
                    if (i4 == 3) {
                        accountStatusValue = AccountStatusValue.ACTIVATED;
                    } else {
                        v40.g();
                        accountStatus = null;
                    }
                    failure = new Result(accountStatus);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    Object obj = ((Result) failure).f71708b;
                    thA2 = Result.a(obj);
                    if (thA2 != null) {
                        this.f43645a.d("AccountRemoteTwistDataSource", "Unable to get account status: " + thA2.getMessage(), null);
                    }
                    return obj;
                }
                accountStatusValue = AccountStatusValue.UNACTIVATED;
            }
            accountStatus = new AccountStatus(accountStatusValue, accountStatusDto.f46708b);
            failure = new Result(accountStatus);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        thA = Result.a(failure);
        if (thA != null) {
            if (!(thA instanceof CancellationException)) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj2 = ((Result) failure).f71708b;
        thA2 = Result.a(obj2);
        if (thA2 != null) {
            this.f43645a.d("AccountRemoteTwistDataSource", "Unable to get account status: " + thA2.getMessage(), null);
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(ContinuationImpl continuationImpl) throws Throwable {
        AccountRemoteTwistDataSource$getUserConsents$1 accountRemoteTwistDataSource$getUserConsents$1;
        Object failure;
        if (continuationImpl instanceof AccountRemoteTwistDataSource$getUserConsents$1) {
            accountRemoteTwistDataSource$getUserConsents$1 = (AccountRemoteTwistDataSource$getUserConsents$1) continuationImpl;
            int i2 = accountRemoteTwistDataSource$getUserConsents$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRemoteTwistDataSource$getUserConsents$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRemoteTwistDataSource$getUserConsents$1 = new AccountRemoteTwistDataSource$getUserConsents$1(this, continuationImpl);
            }
        } else {
            accountRemoteTwistDataSource$getUserConsents$1 = new AccountRemoteTwistDataSource$getUserConsents$1(this, continuationImpl);
        }
        Object consents = accountRemoteTwistDataSource$getUserConsents$1.f43662b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRemoteTwistDataSource$getUserConsents$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(consents);
                Result.Companion companion = Result.INSTANCE;
                TwistAccountApi twistAccountApi = this.f43646b;
                accountRemoteTwistDataSource$getUserConsents$1.d = 1;
                consents = twistAccountApi.getConsents(accountRemoteTwistDataSource$getUserConsents$1);
                if (consents == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(consents);
            }
            failure = new Result((UserConsentsDto) consents);
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(UserConsentsPatch userConsentsPatch, ContinuationImpl continuationImpl) throws Throwable {
        AccountRemoteTwistDataSource$patchUserConsents$1 accountRemoteTwistDataSource$patchUserConsents$1;
        Object failure;
        if (continuationImpl instanceof AccountRemoteTwistDataSource$patchUserConsents$1) {
            accountRemoteTwistDataSource$patchUserConsents$1 = (AccountRemoteTwistDataSource$patchUserConsents$1) continuationImpl;
            int i2 = accountRemoteTwistDataSource$patchUserConsents$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRemoteTwistDataSource$patchUserConsents$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRemoteTwistDataSource$patchUserConsents$1 = new AccountRemoteTwistDataSource$patchUserConsents$1(this, continuationImpl);
            }
        } else {
            accountRemoteTwistDataSource$patchUserConsents$1 = new AccountRemoteTwistDataSource$patchUserConsents$1(this, continuationImpl);
        }
        Object obj = accountRemoteTwistDataSource$patchUserConsents$1.f43664b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRemoteTwistDataSource$patchUserConsents$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                TwistAccountApi twistAccountApi = this.f43646b;
                UserConsentsPatchDto userConsentsPatchDtoD = UserConsentsMapperKt.d(userConsentsPatch);
                accountRemoteTwistDataSource$patchUserConsents$1.d = 1;
                if (twistAccountApi.patchConsents(userConsentsPatchDtoD, accountRemoteTwistDataSource$patchUserConsents$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
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

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(ProfileUpdateDto profileUpdateDto, ContinuationImpl continuationImpl) throws Throwable {
        AccountRemoteTwistDataSource$updateMainInformation$1 accountRemoteTwistDataSource$updateMainInformation$1;
        Object failure;
        if (continuationImpl instanceof AccountRemoteTwistDataSource$updateMainInformation$1) {
            accountRemoteTwistDataSource$updateMainInformation$1 = (AccountRemoteTwistDataSource$updateMainInformation$1) continuationImpl;
            int i2 = accountRemoteTwistDataSource$updateMainInformation$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRemoteTwistDataSource$updateMainInformation$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRemoteTwistDataSource$updateMainInformation$1 = new AccountRemoteTwistDataSource$updateMainInformation$1(this, continuationImpl);
            }
        } else {
            accountRemoteTwistDataSource$updateMainInformation$1 = new AccountRemoteTwistDataSource$updateMainInformation$1(this, continuationImpl);
        }
        Object obj = accountRemoteTwistDataSource$updateMainInformation$1.f43666b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRemoteTwistDataSource$updateMainInformation$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                TwistAccountApi twistAccountApi = this.f43646b;
                accountRemoteTwistDataSource$updateMainInformation$1.d = 1;
                if (twistAccountApi.updateMainInformation(profileUpdateDto, accountRemoteTwistDataSource$updateMainInformation$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
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
        return NetworkExceptionMapperKt.a(ResultExtKt.a(((Result) failure).f71708b), null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(ProfilePwdUpdateDto profilePwdUpdateDto, ContinuationImpl continuationImpl) throws Throwable {
        AccountRemoteTwistDataSource$updatePassword$1 accountRemoteTwistDataSource$updatePassword$1;
        Object failure;
        if (continuationImpl instanceof AccountRemoteTwistDataSource$updatePassword$1) {
            accountRemoteTwistDataSource$updatePassword$1 = (AccountRemoteTwistDataSource$updatePassword$1) continuationImpl;
            int i2 = accountRemoteTwistDataSource$updatePassword$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountRemoteTwistDataSource$updatePassword$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountRemoteTwistDataSource$updatePassword$1 = new AccountRemoteTwistDataSource$updatePassword$1(this, continuationImpl);
            }
        } else {
            accountRemoteTwistDataSource$updatePassword$1 = new AccountRemoteTwistDataSource$updatePassword$1(this, continuationImpl);
        }
        Object objUpdatePassword = accountRemoteTwistDataSource$updatePassword$1.f43668b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountRemoteTwistDataSource$updatePassword$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objUpdatePassword);
                Result.Companion companion = Result.INSTANCE;
                TwistAccountApi twistAccountApi = this.f43646b;
                accountRemoteTwistDataSource$updatePassword$1.d = 1;
                objUpdatePassword = twistAccountApi.updatePassword(profilePwdUpdateDto, accountRemoteTwistDataSource$updatePassword$1);
                if (objUpdatePassword == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objUpdatePassword);
            }
            failure = new Result((Response) objUpdatePassword);
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
