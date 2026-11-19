package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.AuthApi;
import com.vuitton.android.data.datasource.analytic.AnalyticLocalDataSource;
import com.vuitton.android.data.datasource.analytic.AnalyticRemoteDataSource;
import com.vuitton.android.data.datasource.auth.SalesforceTokenDataSource;
import com.vuitton.android.data.datasource.profile.ProfileLocalDataSource;
import com.vuitton.android.data.dto.authentication.oauth.ApiTokenDto;
import com.vuitton.android.data.dto.authentication.oauth.AtgCodeExchangeDto;
import com.vuitton.android.data.dto.authentication.oauth.RefreshTokenDto;
import com.vuitton.android.data.exception.MappingException;
import com.vuitton.android.data.net.cookiejar.WebkitCookieManagerProxy;
import com.vuitton.android.data.net.interceptor.RefreshTokenCommonKt;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.android.domain.repository.SalesforceAuthRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0014BI\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl;", "Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/api/bff/user/AuthApi;", "authApi", "Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;", "salesforceTokenDataSource", "Lcom/vuitton/android/domain/repository/LoginStateRepository;", "loginStateRepository", "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;", "cookieManagerProxy", "Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;", "analyticLocalDataSource", "Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;", "analyticRemoteDataSource", "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;", "profileLocalDataSource", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/AuthApi;Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SalesforceAuthRepositoryImpl implements SalesforceAuthRepository {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f47947i = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthApi f47949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SalesforceTokenDataSource f47950c;
    public final LoginStateRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WebkitCookieManagerProxy f47951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnalyticLocalDataSource f47952f;
    public final AnalyticRemoteDataSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ProfileLocalDataSource f47953h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/SalesforceAuthRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public SalesforceAuthRepositoryImpl(Logger logger, AuthApi authApi, SalesforceTokenDataSource salesforceTokenDataSource, LoginStateRepository loginStateRepository, WebkitCookieManagerProxy webkitCookieManagerProxy, AnalyticLocalDataSource analyticLocalDataSource, AnalyticRemoteDataSource analyticRemoteDataSource, ProfileLocalDataSource profileLocalDataSource) {
        logger.getClass();
        authApi.getClass();
        salesforceTokenDataSource.getClass();
        loginStateRepository.getClass();
        webkitCookieManagerProxy.getClass();
        analyticLocalDataSource.getClass();
        analyticRemoteDataSource.getClass();
        profileLocalDataSource.getClass();
        this.f47948a = logger;
        this.f47949b = authApi;
        this.f47950c = salesforceTokenDataSource;
        this.d = loginStateRepository;
        this.f47951e = webkitCookieManagerProxy;
        this.f47952f = analyticLocalDataSource;
        this.g = analyticRemoteDataSource;
        this.f47953h = profileLocalDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.SalesforceAuthRepository
    public final Object a(ContinuationImpl continuationImpl) {
        SalesforceAuthRepositoryImpl$logout$1 salesforceAuthRepositoryImpl$logout$1;
        if (continuationImpl instanceof SalesforceAuthRepositoryImpl$logout$1) {
            salesforceAuthRepositoryImpl$logout$1 = (SalesforceAuthRepositoryImpl$logout$1) continuationImpl;
            int i2 = salesforceAuthRepositoryImpl$logout$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                salesforceAuthRepositoryImpl$logout$1.d = i2 - Integer.MIN_VALUE;
            } else {
                salesforceAuthRepositoryImpl$logout$1 = new SalesforceAuthRepositoryImpl$logout$1(this, continuationImpl);
            }
        } else {
            salesforceAuthRepositoryImpl$logout$1 = new SalesforceAuthRepositoryImpl$logout$1(this, continuationImpl);
        }
        Object obj = salesforceAuthRepositoryImpl$logout$1.f47958b;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = salesforceAuthRepositoryImpl$logout$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            salesforceAuthRepositoryImpl$logout$1.d = 1;
            Object objF = f(salesforceAuthRepositoryImpl$logout$1);
            return objF == obj2 ? obj2 : objF;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.SalesforceAuthRepository
    public final Object b(String str, ContinuationImpl continuationImpl) {
        SalesforceAuthRepositoryImpl$exchangeAtgCode$1 salesforceAuthRepositoryImpl$exchangeAtgCode$1;
        Object failure;
        Object failure2;
        if (continuationImpl instanceof SalesforceAuthRepositoryImpl$exchangeAtgCode$1) {
            salesforceAuthRepositoryImpl$exchangeAtgCode$1 = (SalesforceAuthRepositoryImpl$exchangeAtgCode$1) continuationImpl;
            int i2 = salesforceAuthRepositoryImpl$exchangeAtgCode$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                salesforceAuthRepositoryImpl$exchangeAtgCode$1.d = i2 - Integer.MIN_VALUE;
            } else {
                salesforceAuthRepositoryImpl$exchangeAtgCode$1 = new SalesforceAuthRepositoryImpl$exchangeAtgCode$1(this, continuationImpl);
            }
        } else {
            salesforceAuthRepositoryImpl$exchangeAtgCode$1 = new SalesforceAuthRepositoryImpl$exchangeAtgCode$1(this, continuationImpl);
        }
        Object objAtgCodeExchange = salesforceAuthRepositoryImpl$exchangeAtgCode$1.f47954b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = salesforceAuthRepositoryImpl$exchangeAtgCode$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objAtgCodeExchange);
                Result.Companion companion = Result.INSTANCE;
                AuthApi authApi = this.f47949b;
                AtgCodeExchangeDto atgCodeExchangeDto = new AtgCodeExchangeDto(str);
                salesforceAuthRepositoryImpl$exchangeAtgCode$1.d = 1;
                objAtgCodeExchange = authApi.atgCodeExchange(atgCodeExchangeDto, salesforceAuthRepositoryImpl$exchangeAtgCode$1);
                if (objAtgCodeExchange == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objAtgCodeExchange);
            }
            failure = new Result((ApiTokenDto) objAtgCodeExchange);
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
            return new Result.Failure(thA2);
        }
        ResultKt.b(obj);
        ApiTokenDto apiTokenDto = (ApiTokenDto) obj;
        apiTokenDto.getClass();
        try {
            String strH = StringKtExtKt.h(apiTokenDto.f44555e);
            if (strH == null) {
                throw new MappingException("userId is required for ATG code-exchange flow");
            }
            String strH2 = StringKtExtKt.h(apiTokenDto.f44552a);
            if (strH2 == null) {
                throw new MappingException("accessToken is required for ATG code-exchange flow");
            }
            String strH3 = StringKtExtKt.h(apiTokenDto.f44553b);
            if (strH3 == null) {
                throw new MappingException("refreshToken is required for ATG code-exchange flow");
            }
            String str2 = apiTokenDto.g;
            failure2 = new Result(new AuthToken.Atg(strH, strH2, strH3, str2 != null ? com.vuitton.foundation.util.StringKtExtKt.e(str2) : null));
            Throwable thA3 = Result.a(failure2);
            if (thA3 != null) {
                if (thA3 instanceof CancellationException) {
                    throw thA3;
                }
                failure2 = new Result(new Result.Failure(thA3));
            }
            return ((Result) failure2).f71708b;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            failure2 = new Result.Failure(th2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00be  */
    /* JADX WARN: Code duplicated, block: B:44:0x00df  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // com.vuitton.android.domain.repository.SalesforceAuthRepository
    public final Object c(AuthToken.Atg atg, ContinuationImpl continuationImpl) {
        SalesforceAuthRepositoryImpl$refreshToken$1 salesforceAuthRepositoryImpl$refreshToken$1;
        Object failure;
        Throwable thA;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        AuthToken.Atg atg2;
        Object objD;
        Object obj;
        AuthToken.Atg atg3;
        if (continuationImpl instanceof SalesforceAuthRepositoryImpl$refreshToken$1) {
            salesforceAuthRepositoryImpl$refreshToken$1 = (SalesforceAuthRepositoryImpl$refreshToken$1) continuationImpl;
            int i7 = salesforceAuthRepositoryImpl$refreshToken$1.f47969i;
            if ((i7 & Integer.MIN_VALUE) != 0) {
                salesforceAuthRepositoryImpl$refreshToken$1.f47969i = i7 - Integer.MIN_VALUE;
            } else {
                salesforceAuthRepositoryImpl$refreshToken$1 = new SalesforceAuthRepositoryImpl$refreshToken$1(this, continuationImpl);
            }
        } else {
            salesforceAuthRepositoryImpl$refreshToken$1 = new SalesforceAuthRepositoryImpl$refreshToken$1(this, continuationImpl);
        }
        Object objRefreshToken = salesforceAuthRepositoryImpl$refreshToken$1.g;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i8 = salesforceAuthRepositoryImpl$refreshToken$1.f47969i;
        try {
            if (i8 == 0) {
                ResultKt.b(objRefreshToken);
                Result.Companion companion = Result.INSTANCE;
                Logger logger = this.f47948a;
                "Requesting new Token with refreshToken : ".concat(com.vuitton.foundation.util.StringKtExtKt.f(atg.f66590c));
                logger.getClass();
                AuthApi authApi = this.f47949b;
                RefreshTokenDto refreshTokenDto = new RefreshTokenDto(atg.f66590c);
                salesforceAuthRepositoryImpl$refreshToken$1.f47964b = atg;
                i2 = 0;
                salesforceAuthRepositoryImpl$refreshToken$1.d = 0;
                salesforceAuthRepositoryImpl$refreshToken$1.f47966e = 0;
                salesforceAuthRepositoryImpl$refreshToken$1.f47967f = 0;
                salesforceAuthRepositoryImpl$refreshToken$1.f47969i = 1;
                objRefreshToken = authApi.refreshToken(refreshTokenDto, salesforceAuthRepositoryImpl$refreshToken$1);
                if (objRefreshToken != obj2) {
                    i3 = 0;
                    i4 = 0;
                }
                return obj2;
            }
            if (i8 == 1) {
                int i9 = salesforceAuthRepositoryImpl$refreshToken$1.f47967f;
                i3 = salesforceAuthRepositoryImpl$refreshToken$1.f47966e;
                int i10 = salesforceAuthRepositoryImpl$refreshToken$1.d;
                AuthToken.Atg atg4 = salesforceAuthRepositoryImpl$refreshToken$1.f47964b;
                ResultKt.b(objRefreshToken);
                i2 = i9;
                atg = atg4;
                i4 = i10;
            } else {
                if (i8 == 2) {
                    i5 = salesforceAuthRepositoryImpl$refreshToken$1.f47967f;
                    i3 = salesforceAuthRepositoryImpl$refreshToken$1.f47966e;
                    i6 = salesforceAuthRepositoryImpl$refreshToken$1.d;
                    ResultKt.b(objRefreshToken);
                    objRefreshToken.getClass();
                    atg2 = (AuthToken.Atg) objRefreshToken;
                    salesforceAuthRepositoryImpl$refreshToken$1.f47964b = null;
                    salesforceAuthRepositoryImpl$refreshToken$1.f47965c = atg2;
                    salesforceAuthRepositoryImpl$refreshToken$1.d = i6;
                    salesforceAuthRepositoryImpl$refreshToken$1.f47966e = i3;
                    salesforceAuthRepositoryImpl$refreshToken$1.f47967f = i5;
                    salesforceAuthRepositoryImpl$refreshToken$1.f47969i = 3;
                    objD = d(atg2, salesforceAuthRepositoryImpl$refreshToken$1);
                    if (objD != obj2) {
                        obj = objD;
                        atg3 = atg2;
                    }
                    return obj2;
                }
                if (i8 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                atg3 = salesforceAuthRepositoryImpl$refreshToken$1.f47965c;
                ResultKt.b(objRefreshToken);
                obj = ((Result) objRefreshToken).f71708b;
            }
            ResultKt.b(obj);
            this.f47951e.a();
            failure = new Result(atg3);
            thA = Result.a(failure);
            if (thA != null) {
                if (!(thA instanceof CancellationException)) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
            SalesforceAuthRepositoryImpl$refreshToken$2$newTokens$1 salesforceAuthRepositoryImpl$refreshToken$2$newTokens$1 = new SalesforceAuthRepositoryImpl$refreshToken$2$newTokens$1(atg, null);
            SalesforceAuthRepositoryImpl$refreshToken$2$newTokens$2 salesforceAuthRepositoryImpl$refreshToken$2$newTokens$2 = new SalesforceAuthRepositoryImpl$refreshToken$2$newTokens$2(this, null);
            salesforceAuthRepositoryImpl$refreshToken$1.f47964b = null;
            salesforceAuthRepositoryImpl$refreshToken$1.d = i4;
            salesforceAuthRepositoryImpl$refreshToken$1.f47966e = i3;
            salesforceAuthRepositoryImpl$refreshToken$1.f47967f = i2;
            salesforceAuthRepositoryImpl$refreshToken$1.f47969i = 2;
            objRefreshToken = RefreshTokenCommonKt.a((Response) objRefreshToken, salesforceAuthRepositoryImpl$refreshToken$2$newTokens$1, salesforceAuthRepositoryImpl$refreshToken$2$newTokens$2, salesforceAuthRepositoryImpl$refreshToken$1);
            if (objRefreshToken != obj2) {
                i5 = i2;
                i6 = i4;
                objRefreshToken.getClass();
                atg2 = (AuthToken.Atg) objRefreshToken;
                salesforceAuthRepositoryImpl$refreshToken$1.f47964b = null;
                salesforceAuthRepositoryImpl$refreshToken$1.f47965c = atg2;
                salesforceAuthRepositoryImpl$refreshToken$1.d = i6;
                salesforceAuthRepositoryImpl$refreshToken$1.f47966e = i3;
                salesforceAuthRepositoryImpl$refreshToken$1.f47967f = i5;
                salesforceAuthRepositoryImpl$refreshToken$1.f47969i = 3;
                objD = d(atg2, salesforceAuthRepositoryImpl$refreshToken$1);
                if (objD != obj2) {
                    obj = objD;
                    atg3 = atg2;
                    ResultKt.b(obj);
                    this.f47951e.a();
                    failure = new Result(atg3);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return ((Result) failure).f71708b;
                }
            }
            return obj2;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        if (r5 == r1) goto L24;
     */
    @Override // com.vuitton.android.domain.repository.SalesforceAuthRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(com.vuitton.foundation.model.domain.model.authentication.AuthToken.Atg r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$onLogin$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$onLogin$1 r0 = (com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$onLogin$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$onLogin$1 r0 = new com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$onLogin$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f47960b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2e
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Throwable -> L66
            kotlin.Result r7 = (kotlin.Result) r7     // Catch: java.lang.Throwable -> L66
            java.lang.Object r5 = r7.f71708b     // Catch: java.lang.Throwable -> L66
            goto L5e
        L2e:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L35:
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            goto L49
        L3d:
            kotlin.ResultKt.b(r7)
            r0.d = r4
            java.lang.Object r6 = r5.e(r6, r0)
            if (r6 != r1) goto L49
            goto L5d
        L49:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 != 0) goto L6e
            kotlin.Unit r6 = (kotlin.Unit) r6     // Catch: java.lang.Throwable -> L66
            com.vuitton.android.domain.repository.LoginStateRepository r5 = r5.d     // Catch: java.lang.Throwable -> L66
            com.vuitton.foundation.model.domain.model.authentication.LoginState r6 = com.vuitton.foundation.model.domain.model.authentication.LoginState.LOGGED_IN     // Catch: java.lang.Throwable -> L66
            r0.d = r3     // Catch: java.lang.Throwable -> L66
            java.lang.Object r5 = r5.b(r6)     // Catch: java.lang.Throwable -> L66
            if (r5 != r1) goto L5e
        L5d:
            return r1
        L5e:
            kotlin.ResultKt.b(r5)     // Catch: java.lang.Throwable -> L66
            kotlin.Unit r5 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L66
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L66
            return r5
        L66:
            r5 = move-exception
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
        L6e:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl.d(com.vuitton.foundation.model.domain.model.authentication.AuthToken$Atg, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0055, code lost:
    
        if (g(r0) == r1) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(com.vuitton.foundation.model.domain.model.authentication.AuthToken.Atg r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$internalSaveTokens$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$internalSaveTokens$1 r0 = (com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$internalSaveTokens$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$internalSaveTokens$1 r0 = new com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$internalSaveTokens$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f47956b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Throwable -> L5d
            goto L58
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L31:
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            goto L47
        L39:
            kotlin.ResultKt.b(r7)
            r0.d = r4
            com.vuitton.android.data.datasource.auth.SalesforceTokenDataSource r7 = r5.f47950c
            java.lang.Object r6 = r7.c(r6, r0)
            if (r6 != r1) goto L47
            goto L57
        L47:
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            boolean r7 = r6 instanceof kotlin.Result.Failure
            if (r7 != 0) goto L65
            kotlin.Unit r6 = (kotlin.Unit) r6     // Catch: java.lang.Throwable -> L5d
            r0.d = r3     // Catch: java.lang.Throwable -> L5d
            java.lang.Object r5 = r5.g(r0)     // Catch: java.lang.Throwable -> L5d
            if (r5 != r1) goto L58
        L57:
            return r1
        L58:
            kotlin.Unit r5 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L5d
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L5d
            return r5
        L5d:
            r5 = move-exception
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
        L65:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl.e(com.vuitton.foundation.model.domain.model.authentication.AuthToken$Atg, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007d A[Catch: all -> 0x008e, TRY_ENTER, TryCatch #1 {all -> 0x008e, blocks: (B:13:0x0029, B:38:0x0088, B:35:0x007d), top: B:43:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0085, code lost:
    
        if (g(r0) == r1) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$onLogout$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$onLogout$1 r0 = (com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$onLogout$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$onLogout$1 r0 = new com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$onLogout$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f47962b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L46
            if (r2 == r5) goto L3e
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2d
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Throwable -> L8e
            goto L88
        L2d:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L34:
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Throwable -> L3c
            kotlin.Result r7 = (kotlin.Result) r7     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r7 = r7.f71708b     // Catch: java.lang.Throwable -> L3c
            goto L69
        L3c:
            r7 = move-exception
            goto L71
        L3e:
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r7 = r7.f71708b
            goto L54
        L46:
            kotlin.ResultKt.b(r7)
            r0.d = r5
            com.vuitton.android.data.datasource.auth.SalesforceTokenDataSource r7 = r6.f47950c
            java.lang.Object r7 = r7.b(r0)
            if (r7 != r1) goto L54
            goto L87
        L54:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r7 instanceof kotlin.Result.Failure
            if (r2 != 0) goto L79
            kotlin.Unit r7 = (kotlin.Unit) r7     // Catch: java.lang.Throwable -> L3c
            com.vuitton.android.domain.repository.LoginStateRepository r7 = r6.d     // Catch: java.lang.Throwable -> L3c
            com.vuitton.foundation.model.domain.model.authentication.LoginState r2 = com.vuitton.foundation.model.domain.model.authentication.LoginState.LOGGED_OUT     // Catch: java.lang.Throwable -> L3c
            r0.d = r4     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r7 = r7.b(r2)     // Catch: java.lang.Throwable -> L3c
            if (r7 != r1) goto L69
            goto L87
        L69:
            kotlin.ResultKt.b(r7)     // Catch: java.lang.Throwable -> L3c
            kotlin.Unit r7 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L3c
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L3c
            goto L79
        L71:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r2 = new kotlin.Result$Failure
            r2.<init>(r7)
            r7 = r2
        L79:
            boolean r2 = r7 instanceof kotlin.Result.Failure
            if (r2 != 0) goto L96
            kotlin.Unit r7 = (kotlin.Unit) r7     // Catch: java.lang.Throwable -> L8e
            r0.d = r3     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r6 = r6.g(r0)     // Catch: java.lang.Throwable -> L8e
            if (r6 != r1) goto L88
        L87:
            return r1
        L88:
            kotlin.Unit r6 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L8e
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L8e
            r7 = r6
            goto L96
        L8e:
            r6 = move-exception
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r7 = new kotlin.Result$Failure
            r7.<init>(r6)
        L96:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl.f(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:32:0x007d  */
    /* JADX WARN: Code duplicated, block: B:38:0x008b  */
    /* JADX WARN: Code duplicated, block: B:42:0x0099 A[PHI: r9
      0x0099: PHI (r9v18 java.lang.Object) = (r9v14 java.lang.Object), (r9v22 java.lang.Object) binds: [B:40:0x0096, B:17:0x003d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:44:0x009f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ae, code lost:
    
        if (r8.g.a((java.lang.String) r9, r0) == r1) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(kotlin.coroutines.jvm.internal.ContinuationImpl r9) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1
            if (r0 == 0) goto L13
            r0 = r9
            com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1 r0 = (com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1) r0
            int r1 = r0.f47977f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47977f = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1 r0 = new com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl$sendAnalyticUserIdProperty$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47977f
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L53
            if (r2 == r6) goto L4f
            if (r2 == r5) goto L45
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L37
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            r9.getClass()
            goto Lb1
        L37:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r7
        L3d:
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
            goto L99
        L45:
            java.lang.String r2 = r0.f47974b
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
            goto L77
        L4f:
            kotlin.ResultKt.b(r9)
            goto L61
        L53:
            kotlin.ResultKt.b(r9)
            r0.f47977f = r6
            com.vuitton.android.data.datasource.auth.SalesforceTokenDataSource r9 = r8.f47950c
            java.lang.Object r9 = r9.a(r0)
            if (r9 != r1) goto L61
            goto Lb0
        L61:
            com.vuitton.foundation.model.domain.model.authentication.AuthToken$Atg r9 = (com.vuitton.foundation.model.domain.model.authentication.AuthToken.Atg) r9
            if (r9 == 0) goto L69
            java.lang.String r9 = r9.f66588a
            r2 = r9
            goto L6a
        L69:
            r2 = r7
        L6a:
            r0.f47974b = r2
            r0.f47977f = r5
            com.vuitton.android.data.datasource.profile.ProfileLocalDataSource r9 = r8.f47953h
            java.lang.Object r9 = r9.b(r0)
            if (r9 != r1) goto L77
            goto Lb0
        L77:
            kotlin.Result$Companion r5 = kotlin.Result.INSTANCE
            boolean r5 = r9 instanceof kotlin.Result.Failure
            if (r5 == 0) goto L7e
            r9 = r7
        L7e:
            com.vuitton.foundation.model.domain.model.profile.Profile r9 = (com.vuitton.foundation.model.domain.model.profile.Profile) r9
            if (r9 == 0) goto L8b
            com.vuitton.foundation.model.domain.model.profile.Profile$Id r9 = r9.f68164a
            if (r9 == 0) goto L8b
            java.lang.String r9 = r9.getF68177a()
            goto L8c
        L8b:
            r9 = r7
        L8c:
            r0.f47974b = r7
            r0.f47977f = r4
            com.vuitton.android.data.datasource.analytic.AnalyticLocalDataSource r4 = r8.f47952f
            java.lang.Object r9 = r4.a(r2, r9, r0)
            if (r9 != r1) goto L99
            goto Lb0
        L99:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r9 instanceof kotlin.Result.Failure
            if (r2 != 0) goto Lb1
            r2 = r9
            java.lang.String r2 = (java.lang.String) r2
            r0.f47974b = r7
            r0.f47975c = r9
            r0.f47977f = r3
            com.vuitton.android.data.datasource.analytic.AnalyticRemoteDataSource r8 = r8.g
            java.lang.Object r8 = r8.a(r2, r0)
            if (r8 != r1) goto Lb1
        Lb0:
            return r1
        Lb1:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl.g(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
