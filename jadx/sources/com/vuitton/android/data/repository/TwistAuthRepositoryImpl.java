package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.media.offline.FileUtils;
import com.vuitton.android.data.api.bff.user.AuthApi;
import com.vuitton.android.data.datasource.analytic.AnalyticLocalDataSource;
import com.vuitton.android.data.datasource.analytic.AnalyticRemoteDataSource;
import com.vuitton.android.data.datasource.auth.TwistTokenDataSource;
import com.vuitton.android.data.datasource.profile.ProfileLocalDataSource;
import com.vuitton.android.data.dto.authentication.common.RegistrationAddressDto;
import com.vuitton.android.data.dto.authentication.common.UserInformationDtoKt;
import com.vuitton.android.data.dto.authentication.oauth.ApiTokenDto;
import com.vuitton.android.data.dto.authentication.oauth.AuthUrlsDto;
import com.vuitton.android.data.dto.authentication.oauth.ClientCodeDto;
import com.vuitton.android.data.dto.authentication.oauth.ForgetPasswordInitiateDto;
import com.vuitton.android.data.dto.authentication.oauth.RegisterInitiateBodyDto;
import com.vuitton.android.data.dto.authentication.oauth.RegisterInitiateResponseDto;
import com.vuitton.android.data.dto.authentication.oauth.RegisterValidateBodyDto;
import com.vuitton.android.data.dto.authentication.oauth.mapper.ApiTokenMapperKt;
import com.vuitton.android.data.dto.authentication.oauth.mapper.AuthUrlsMapperKt;
import com.vuitton.android.data.dto.authentication.oauth.mapper.RegisterInitiateMapperKt;
import com.vuitton.android.data.dto.authentication.social.SocialRegisterBodyDto;
import com.vuitton.android.data.dto.error.ErrorDetailsDto;
import com.vuitton.android.data.dto.error.ErrorDto;
import com.vuitton.android.data.dto.profile.UserConsentsMapperKt;
import com.vuitton.android.data.net.cookiejar.WebkitCookieManagerProxy;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.android.domain.repository.TwistAuthRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.error.session.SessionException;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import com.vuitton.foundation.model.domain.model.authentication.oauth.ClientCode;
import com.vuitton.foundation.model.domain.model.authentication.oauth.InvalidAddressScope;
import com.vuitton.foundation.model.domain.model.authentication.oauth.InvalidNameScope;
import com.vuitton.foundation.model.domain.model.authentication.oauth.LoginRegistrationCredentials;
import com.vuitton.foundation.model.domain.model.authentication.oauth.NativeRegisterError;
import com.vuitton.foundation.model.domain.model.authentication.oauth.NativeRegisterErrorListException;
import com.vuitton.foundation.model.domain.model.authentication.oauth.NativeRegisterException;
import com.vuitton.foundation.model.domain.model.authentication.oauth.RegisterInitiateBody;
import com.vuitton.foundation.model.domain.model.authentication.oauth.RegisterValidateBody;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialRegisterBody;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import defpackage.md;
import java.io.Serializable;
import java.net.URI;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.serialization.json.Json;
import lv.nfc.reader.utils.LVConstants;
import okhttp3.ResponseBody;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0016BQ\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl;", "Lcom/vuitton/android/domain/repository/TwistAuthRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/api/bff/user/AuthApi;", "authApi", "Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;", "twistTokenDataSource", "Lcom/vuitton/android/domain/repository/LoginStateRepository;", "loginStateRepository", "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;", "cookieManagerProxy", "Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;", "analyticLocalDataSource", "Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;", "analyticRemoteDataSource", "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;", "profileLocalDataSource", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/AuthApi;Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/data/datasource/analytic/AnalyticLocalDataSource;Lcom/vuitton/android/data/datasource/analytic/AnalyticRemoteDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;Lkotlinx/serialization/json/Json;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TwistAuthRepositoryImpl implements TwistAuthRepository {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Set f48080j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f48081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthApi f48082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TwistTokenDataSource f48083c;
    public final LoginStateRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WebkitCookieManagerProxy f48084e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnalyticLocalDataSource f48085f;
    public final AnalyticRemoteDataSource g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ProfileLocalDataSource f48086h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Json f48087i;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/TwistAuthRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "", "COOKIE_DOMAIN_SUFFIXES", "Ljava/util/Set;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f48080j = ArraysKt.Z(new String[]{"louisvuitton.com", "louisvuitton.cn"});
    }

    @Inject
    public TwistAuthRepositoryImpl(Logger logger, AuthApi authApi, TwistTokenDataSource twistTokenDataSource, LoginStateRepository loginStateRepository, WebkitCookieManagerProxy webkitCookieManagerProxy, AnalyticLocalDataSource analyticLocalDataSource, AnalyticRemoteDataSource analyticRemoteDataSource, ProfileLocalDataSource profileLocalDataSource, Json json) {
        logger.getClass();
        authApi.getClass();
        twistTokenDataSource.getClass();
        loginStateRepository.getClass();
        webkitCookieManagerProxy.getClass();
        analyticLocalDataSource.getClass();
        analyticRemoteDataSource.getClass();
        profileLocalDataSource.getClass();
        json.getClass();
        this.f48081a = logger;
        this.f48082b = authApi;
        this.f48083c = twistTokenDataSource;
        this.d = loginStateRepository;
        this.f48084e = webkitCookieManagerProxy;
        this.f48085f = analyticLocalDataSource;
        this.g = analyticRemoteDataSource;
        this.f48086h = profileLocalDataSource;
        this.f48087i = json;
    }

    public static List t(String str) {
        if (str == null || StringsKt.w(str)) {
            return EmptyList.f71768b;
        }
        List listSplit$default = StringsKt__StringsKt.split$default(str, new String[]{";"}, false, 0, 6, null);
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listSplit$default, 10));
        Iterator it = listSplit$default.iterator();
        while (it.hasNext()) {
            arrayList.add(StringsKt.a0((String) it.next()).toString());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            List listSplit$default2 = StringsKt__StringsKt.split$default((String) it2.next(), new String[]{"="}, false, 2, 2, null);
            Pair pair = listSplit$default2.size() == 2 ? new Pair(StringsKt.a0((String) listSplit$default2.get(0)).toString(), StringsKt.a0((String) listSplit$default2.get(1)).toString()) : null;
            if (pair != null) {
                arrayList3.add(pair);
            }
        }
        return arrayList3;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0087  */
    /* JADX WARN: Code duplicated, block: B:40:0x008b  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    public final Object a(ContinuationImpl continuationImpl) {
        TwistAuthRepositoryImpl$logout$1 twistAuthRepositoryImpl$logout$1;
        Object failure;
        Throwable thA;
        Object objS;
        if (continuationImpl instanceof TwistAuthRepositoryImpl$logout$1) {
            twistAuthRepositoryImpl$logout$1 = (TwistAuthRepositoryImpl$logout$1) continuationImpl;
            int i2 = twistAuthRepositoryImpl$logout$1.f48115e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistAuthRepositoryImpl$logout$1.f48115e = i2 - Integer.MIN_VALUE;
            } else {
                twistAuthRepositoryImpl$logout$1 = new TwistAuthRepositoryImpl$logout$1(this, continuationImpl);
            }
        } else {
            twistAuthRepositoryImpl$logout$1 = new TwistAuthRepositoryImpl$logout$1(this, continuationImpl);
        }
        Object objA = twistAuthRepositoryImpl$logout$1.f48114c;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistAuthRepositoryImpl$logout$1.f48115e;
        try {
            if (i3 == 0) {
                ResultKt.b(objA);
                twistAuthRepositoryImpl$logout$1.f48115e = 1;
                objA = this.f48083c.a(twistAuthRepositoryImpl$logout$1);
                if (objA != obj) {
                }
                return obj;
            }
            if (i3 == 1) {
                ResultKt.b(objA);
            } else {
                if (i3 != 2) {
                    if (i3 == 3) {
                        ResultKt.b(objA);
                        return ((Result) objA).f71708b;
                    }
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i3 = twistAuthRepositoryImpl$logout$1.f48113b;
                ResultKt.b(objA);
            }
            failure = new Result(Unit.f71739a);
            thA = Result.a(failure);
            if (thA != null) {
                if (!(thA instanceof CancellationException)) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            twistAuthRepositoryImpl$logout$1.f48113b = i3;
            twistAuthRepositoryImpl$logout$1.f48115e = 3;
            objS = s(twistAuthRepositoryImpl$logout$1);
            if (objS != obj) {
                return obj;
            }
            return objS;
            AuthToken.Twist twist = (AuthToken.Twist) objA;
            if (!(twist instanceof AuthToken.Twist.User)) {
                Result.Companion companion = Result.INSTANCE;
                return new Result.Failure(new IllegalStateException("Not authenticated with Twist"));
            }
            i3 = 0;
            Result.Companion companion2 = Result.INSTANCE;
            AuthApi authApi = this.f48082b;
            String str = ((AuthToken.Twist.User) twist).f66595b;
            String str2 = ((AuthToken.Twist.User) twist).d;
            twistAuthRepositoryImpl$logout$1.f48113b = 0;
            twistAuthRepositoryImpl$logout$1.f48115e = 2;
            if (authApi.logout(str, str2, twistAuthRepositoryImpl$logout$1) != obj) {
                failure = new Result(Unit.f71739a);
                thA = Result.a(failure);
                if (thA != null) {
                    if (!(thA instanceof CancellationException)) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                twistAuthRepositoryImpl$logout$1.f48113b = i3;
                twistAuthRepositoryImpl$logout$1.f48115e = 3;
                objS = s(twistAuthRepositoryImpl$logout$1);
                if (objS != obj) {
                    return objS;
                }
            }
            return obj;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        if (r5 == r1) goto L24;
     */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist.User r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.vuitton.android.data.repository.TwistAuthRepositoryImpl$onLogin$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.data.repository.TwistAuthRepositoryImpl$onLogin$1 r0 = (com.vuitton.android.data.repository.TwistAuthRepositoryImpl$onLogin$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.TwistAuthRepositoryImpl$onLogin$1 r0 = new com.vuitton.android.data.repository.TwistAuthRepositoryImpl$onLogin$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f48121b
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
            java.lang.Object r6 = r5.r(r6, r0)
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
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.TwistAuthRepositoryImpl.b(com.vuitton.foundation.model.domain.model.authentication.AuthToken$Twist$User, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:86:0x0164  */
    /* JADX WARN: Code duplicated, block: B:88:0x0168  */
    /* JADX WARN: Code duplicated, block: B:91:0x0178  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0085, code lost:
    
        if (b(r10, r0) == r1) goto L30;
     */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(com.vuitton.foundation.model.domain.model.authentication.oauth.ForgetPasswordValidation r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            Method dump skipped, instruction units count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.TwistAuthRepositoryImpl.c(com.vuitton.foundation.model.domain.model.authentication.oauth.ForgetPasswordValidation, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0094 A[Catch: all -> 0x00a0, TryCatch #0 {all -> 0x00a0, blocks: (B:13:0x0029, B:43:0x008f, B:45:0x0094, B:46:0x009a, B:47:0x009f, B:18:0x003d, B:25:0x005a, B:29:0x0065, B:31:0x006b, B:35:0x0074, B:39:0x007a, B:21:0x0044), top: B:59:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00af  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    public final Object d(ContinuationImpl continuationImpl) {
        TwistAuthRepositoryImpl$authenticateGuest$1 twistAuthRepositoryImpl$authenticateGuest$1;
        Object failure;
        Throwable thA;
        int i2;
        int i3;
        int i4;
        ApiTokenDto apiTokenDto;
        Object objR;
        AuthToken.Twist.Guest guest;
        if (continuationImpl instanceof TwistAuthRepositoryImpl$authenticateGuest$1) {
            twistAuthRepositoryImpl$authenticateGuest$1 = (TwistAuthRepositoryImpl$authenticateGuest$1) continuationImpl;
            int i5 = twistAuthRepositoryImpl$authenticateGuest$1.f48094h;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                twistAuthRepositoryImpl$authenticateGuest$1.f48094h = i5 - Integer.MIN_VALUE;
            } else {
                twistAuthRepositoryImpl$authenticateGuest$1 = new TwistAuthRepositoryImpl$authenticateGuest$1(this, continuationImpl);
            }
        } else {
            twistAuthRepositoryImpl$authenticateGuest$1 = new TwistAuthRepositoryImpl$authenticateGuest$1(this, continuationImpl);
        }
        Object objAuthenticateGuest = twistAuthRepositoryImpl$authenticateGuest$1.f48093f;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i6 = twistAuthRepositoryImpl$authenticateGuest$1.f48094h;
        try {
            if (i6 == 0) {
                ResultKt.b(objAuthenticateGuest);
                Result.Companion companion = Result.INSTANCE;
                AuthApi authApi = this.f48082b;
                i2 = 0;
                twistAuthRepositoryImpl$authenticateGuest$1.f48090b = 0;
                twistAuthRepositoryImpl$authenticateGuest$1.f48091c = 0;
                twistAuthRepositoryImpl$authenticateGuest$1.d = 0;
                twistAuthRepositoryImpl$authenticateGuest$1.f48094h = 1;
                objAuthenticateGuest = authApi.authenticateGuest(twistAuthRepositoryImpl$authenticateGuest$1);
                if (objAuthenticateGuest != obj) {
                    i3 = 0;
                    i4 = 0;
                }
                return obj;
            }
            if (i6 == 1) {
                i2 = twistAuthRepositoryImpl$authenticateGuest$1.d;
                i3 = twistAuthRepositoryImpl$authenticateGuest$1.f48091c;
                i4 = twistAuthRepositoryImpl$authenticateGuest$1.f48090b;
                ResultKt.b(objAuthenticateGuest);
            } else {
                if (i6 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                guest = twistAuthRepositoryImpl$authenticateGuest$1.f48092e;
                ResultKt.b(objAuthenticateGuest);
                objR = ((Result) objAuthenticateGuest).f71708b;
            }
            ResultKt.b(objR);
            if (guest != null) {
                failure = new Result(guest);
                thA = Result.a(failure);
                if (thA != null) {
                    if (!(thA instanceof CancellationException)) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                return ((Result) failure).f71708b;
            }
            throw new SessionException.SessionAuthenticationFailException();
            Response response = (Response) objAuthenticateGuest;
            Response response2 = response.f79449a.r ? response : null;
            if (response2 != null && (apiTokenDto = (ApiTokenDto) response2.f79450b) != null) {
                String str = apiTokenDto.f44554c;
                String str2 = "";
                if (str == null) {
                    str = "";
                }
                String str3 = apiTokenDto.d;
                if (str3 != null) {
                    str2 = str3;
                }
                AuthToken.Twist.Guest guest2 = new AuthToken.Twist.Guest(str, str2);
                twistAuthRepositoryImpl$authenticateGuest$1.f48092e = guest2;
                twistAuthRepositoryImpl$authenticateGuest$1.f48090b = i4;
                twistAuthRepositoryImpl$authenticateGuest$1.f48091c = i3;
                twistAuthRepositoryImpl$authenticateGuest$1.d = i2;
                twistAuthRepositoryImpl$authenticateGuest$1.f48094h = 2;
                objR = r(guest2, twistAuthRepositoryImpl$authenticateGuest$1);
                if (objR != obj) {
                    guest = guest2;
                    ResultKt.b(objR);
                    if (guest != null) {
                        failure = new Result(guest);
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
                return obj;
            }
            throw new SessionException.SessionAuthenticationFailException();
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00aa A[Catch: all -> 0x016e, TryCatch #1 {all -> 0x016e, blocks: (B:13:0x002a, B:46:0x00c5, B:18:0x003f, B:39:0x00a2, B:41:0x00aa, B:43:0x00b0, B:47:0x00d1, B:48:0x00d8, B:49:0x00d9, B:51:0x00dd, B:53:0x00e3, B:62:0x010c, B:68:0x0122, B:71:0x012b, B:73:0x012f, B:75:0x0133, B:78:0x013d, B:80:0x0141, B:83:0x014f, B:87:0x0166, B:84:0x0155, B:86:0x015e, B:65:0x0113, B:67:0x0117, B:88:0x0167, B:61:0x0105, B:89:0x0168, B:90:0x016d, B:21:0x004c, B:28:0x0070, B:30:0x0076, B:33:0x007c, B:35:0x0080, B:24:0x0058, B:54:0x00e5, B:58:0x00fe, B:57:0x00ef), top: B:104:0x0022, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b0 A[Catch: all -> 0x016e, TryCatch #1 {all -> 0x016e, blocks: (B:13:0x002a, B:46:0x00c5, B:18:0x003f, B:39:0x00a2, B:41:0x00aa, B:43:0x00b0, B:47:0x00d1, B:48:0x00d8, B:49:0x00d9, B:51:0x00dd, B:53:0x00e3, B:62:0x010c, B:68:0x0122, B:71:0x012b, B:73:0x012f, B:75:0x0133, B:78:0x013d, B:80:0x0141, B:83:0x014f, B:87:0x0166, B:84:0x0155, B:86:0x015e, B:65:0x0113, B:67:0x0117, B:88:0x0167, B:61:0x0105, B:89:0x0168, B:90:0x016d, B:21:0x004c, B:28:0x0070, B:30:0x0076, B:33:0x007c, B:35:0x0080, B:24:0x0058, B:54:0x00e5, B:58:0x00fe, B:57:0x00ef), top: B:104:0x0022, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00d1 A[Catch: all -> 0x016e, TryCatch #1 {all -> 0x016e, blocks: (B:13:0x002a, B:46:0x00c5, B:18:0x003f, B:39:0x00a2, B:41:0x00aa, B:43:0x00b0, B:47:0x00d1, B:48:0x00d8, B:49:0x00d9, B:51:0x00dd, B:53:0x00e3, B:62:0x010c, B:68:0x0122, B:71:0x012b, B:73:0x012f, B:75:0x0133, B:78:0x013d, B:80:0x0141, B:83:0x014f, B:87:0x0166, B:84:0x0155, B:86:0x015e, B:65:0x0113, B:67:0x0117, B:88:0x0167, B:61:0x0105, B:89:0x0168, B:90:0x016d, B:21:0x004c, B:28:0x0070, B:30:0x0076, B:33:0x007c, B:35:0x0080, B:24:0x0058, B:54:0x00e5, B:58:0x00fe, B:57:0x00ef), top: B:104:0x0022, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00d9 A[Catch: all -> 0x016e, TryCatch #1 {all -> 0x016e, blocks: (B:13:0x002a, B:46:0x00c5, B:18:0x003f, B:39:0x00a2, B:41:0x00aa, B:43:0x00b0, B:47:0x00d1, B:48:0x00d8, B:49:0x00d9, B:51:0x00dd, B:53:0x00e3, B:62:0x010c, B:68:0x0122, B:71:0x012b, B:73:0x012f, B:75:0x0133, B:78:0x013d, B:80:0x0141, B:83:0x014f, B:87:0x0166, B:84:0x0155, B:86:0x015e, B:65:0x0113, B:67:0x0117, B:88:0x0167, B:61:0x0105, B:89:0x0168, B:90:0x016d, B:21:0x004c, B:28:0x0070, B:30:0x0076, B:33:0x007c, B:35:0x0080, B:24:0x0058, B:54:0x00e5, B:58:0x00fe, B:57:0x00ef), top: B:104:0x0022, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c2, code lost:
    
        if (r12 == r1) goto L45;
     */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(com.vuitton.foundation.model.domain.model.authentication.oauth.NativeLogin r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instruction units count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.TwistAuthRepositoryImpl.e(com.vuitton.foundation.model.domain.model.authentication.oauth.NativeLogin, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    public final Object f(LoginRegistrationCredentials loginRegistrationCredentials, ContinuationImpl continuationImpl) {
        TwistAuthRepositoryImpl$registration$1 twistAuthRepositoryImpl$registration$1;
        Object failure;
        if (continuationImpl instanceof TwistAuthRepositoryImpl$registration$1) {
            twistAuthRepositoryImpl$registration$1 = (TwistAuthRepositoryImpl$registration$1) continuationImpl;
            int i2 = twistAuthRepositoryImpl$registration$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistAuthRepositoryImpl$registration$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistAuthRepositoryImpl$registration$1 = new TwistAuthRepositoryImpl$registration$1(this, continuationImpl);
            }
        } else {
            twistAuthRepositoryImpl$registration$1 = new TwistAuthRepositoryImpl$registration$1(this, continuationImpl);
        }
        Object objRegister = twistAuthRepositoryImpl$registration$1.f48141b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistAuthRepositoryImpl$registration$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objRegister);
                Result.Companion companion = Result.INSTANCE;
                AuthApi authApi = this.f48082b;
                String str = loginRegistrationCredentials.f66629a;
                UUID uuid = loginRegistrationCredentials.f66630b;
                String str2 = loginRegistrationCredentials.f66631c;
                String strEncode = str2 != null ? URLEncoder.encode(str2, Charsets.UTF_8.name()) : null;
                if (strEncode == null) {
                    strEncode = "";
                }
                twistAuthRepositoryImpl$registration$1.d = 1;
                objRegister = authApi.register(str, uuid, strEncode, twistAuthRepositoryImpl$registration$1);
                if (objRegister == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objRegister);
            }
            failure = new Result(AuthUrlsMapperKt.a((AuthUrlsDto) objRegister));
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
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    public final Object g(ClientCode clientCode, ContinuationImpl continuationImpl) {
        TwistAuthRepositoryImpl$authenticateCodeExchange$1 twistAuthRepositoryImpl$authenticateCodeExchange$1;
        Object failure;
        if (continuationImpl instanceof TwistAuthRepositoryImpl$authenticateCodeExchange$1) {
            twistAuthRepositoryImpl$authenticateCodeExchange$1 = (TwistAuthRepositoryImpl$authenticateCodeExchange$1) continuationImpl;
            int i2 = twistAuthRepositoryImpl$authenticateCodeExchange$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistAuthRepositoryImpl$authenticateCodeExchange$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistAuthRepositoryImpl$authenticateCodeExchange$1 = new TwistAuthRepositoryImpl$authenticateCodeExchange$1(this, continuationImpl);
            }
        } else {
            twistAuthRepositoryImpl$authenticateCodeExchange$1 = new TwistAuthRepositoryImpl$authenticateCodeExchange$1(this, continuationImpl);
        }
        Object objTwistCodeExchange = twistAuthRepositoryImpl$authenticateCodeExchange$1.f48088b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistAuthRepositoryImpl$authenticateCodeExchange$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objTwistCodeExchange);
                Result.Companion companion = Result.INSTANCE;
                AuthApi authApi = this.f48082b;
                clientCode.getClass();
                ClientCodeDto clientCodeDto = new ClientCodeDto(clientCode.f66620b, clientCode.f66621c, clientCode.f66619a, clientCode.d);
                twistAuthRepositoryImpl$authenticateCodeExchange$1.d = 1;
                objTwistCodeExchange = authApi.twistCodeExchange(clientCodeDto, twistAuthRepositoryImpl$authenticateCodeExchange$1);
                if (objTwistCodeExchange == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objTwistCodeExchange);
            }
            failure = new Result(ApiTokenMapperKt.b((ApiTokenDto) objTwistCodeExchange));
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
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    public final Object h(LoginRegistrationCredentials loginRegistrationCredentials, ContinuationImpl continuationImpl) {
        TwistAuthRepositoryImpl$login$1 twistAuthRepositoryImpl$login$1;
        Object failure;
        if (continuationImpl instanceof TwistAuthRepositoryImpl$login$1) {
            twistAuthRepositoryImpl$login$1 = (TwistAuthRepositoryImpl$login$1) continuationImpl;
            int i2 = twistAuthRepositoryImpl$login$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistAuthRepositoryImpl$login$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistAuthRepositoryImpl$login$1 = new TwistAuthRepositoryImpl$login$1(this, continuationImpl);
            }
        } else {
            twistAuthRepositoryImpl$login$1 = new TwistAuthRepositoryImpl$login$1(this, continuationImpl);
        }
        Object objLogin = twistAuthRepositoryImpl$login$1.f48111b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistAuthRepositoryImpl$login$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objLogin);
                Result.Companion companion = Result.INSTANCE;
                AuthApi authApi = this.f48082b;
                String str = loginRegistrationCredentials.f66629a;
                UUID uuid = loginRegistrationCredentials.f66630b;
                twistAuthRepositoryImpl$login$1.d = 1;
                objLogin = authApi.login(str, uuid, twistAuthRepositoryImpl$login$1);
                if (objLogin == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objLogin);
            }
            failure = new Result(AuthUrlsMapperKt.a((AuthUrlsDto) objLogin));
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
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d5, code lost:
    
        if (r10 == r1) goto L38;
     */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(com.vuitton.foundation.model.domain.model.config.AppConfig r8, java.lang.String r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            Method dump skipped, instruction units count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.TwistAuthRepositoryImpl.i(com.vuitton.foundation.model.domain.model.config.AppConfig, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    public final Object j(RegisterValidateBody registerValidateBody, ContinuationImpl continuationImpl) {
        TwistAuthRepositoryImpl$registerValidate$1 twistAuthRepositoryImpl$registerValidate$1;
        Object failure;
        if (continuationImpl instanceof TwistAuthRepositoryImpl$registerValidate$1) {
            twistAuthRepositoryImpl$registerValidate$1 = (TwistAuthRepositoryImpl$registerValidate$1) continuationImpl;
            int i2 = twistAuthRepositoryImpl$registerValidate$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistAuthRepositoryImpl$registerValidate$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistAuthRepositoryImpl$registerValidate$1 = new TwistAuthRepositoryImpl$registerValidate$1(this, continuationImpl);
            }
        } else {
            twistAuthRepositoryImpl$registerValidate$1 = new TwistAuthRepositoryImpl$registerValidate$1(this, continuationImpl);
        }
        Object objRegisterValidate = twistAuthRepositoryImpl$registerValidate$1.f48139b;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistAuthRepositoryImpl$registerValidate$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objRegisterValidate);
                Result.Companion companion = Result.INSTANCE;
                AuthApi authApi = this.f48082b;
                registerValidateBody.getClass();
                RegisterValidateBodyDto registerValidateBodyDto = new RegisterValidateBodyDto(registerValidateBody.f66643a, registerValidateBody.f66644b);
                twistAuthRepositoryImpl$registerValidate$1.d = 1;
                objRegisterValidate = authApi.registerValidate(registerValidateBodyDto, twistAuthRepositoryImpl$registerValidate$1);
                if (objRegisterValidate == obj) {
                }
            }
            if (i3 != 1) {
                if (i3 == 2) {
                    ResultKt.b(objRegisterValidate);
                    return ((Result) objRegisterValidate).f71708b;
                }
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objRegisterValidate);
            failure = new Result((Response) objRegisterValidate);
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
        Object obj2 = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj2);
        if (thA2 != null) {
            return new Result.Failure(thA2);
        }
        ResultKt.b(obj2);
        twistAuthRepositoryImpl$registerValidate$1.d = 2;
        Object objU = u((Response) obj2, twistAuthRepositoryImpl$registerValidate$1);
        return objU == obj ? obj : objU;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00ca A[Catch: all -> 0x018f, TryCatch #1 {all -> 0x018f, blocks: (B:14:0x0030, B:47:0x00ea, B:19:0x0046, B:40:0x00c2, B:42:0x00ca, B:44:0x00d0, B:48:0x00f3, B:49:0x00fa, B:50:0x00fb, B:52:0x00ff, B:54:0x0105, B:63:0x012e, B:69:0x0144, B:72:0x014d, B:74:0x0151, B:76:0x0155, B:79:0x015f, B:81:0x0163, B:84:0x0171, B:90:0x018e, B:85:0x0177, B:87:0x0180, B:66:0x0135, B:68:0x0139, B:88:0x0188, B:62:0x0127, B:89:0x0189, B:22:0x0057, B:29:0x0088, B:31:0x008e, B:34:0x0094, B:36:0x0098, B:25:0x0064, B:55:0x0107, B:59:0x0120, B:58:0x0111), top: B:104:0x0028, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00d0 A[Catch: all -> 0x018f, TryCatch #1 {all -> 0x018f, blocks: (B:14:0x0030, B:47:0x00ea, B:19:0x0046, B:40:0x00c2, B:42:0x00ca, B:44:0x00d0, B:48:0x00f3, B:49:0x00fa, B:50:0x00fb, B:52:0x00ff, B:54:0x0105, B:63:0x012e, B:69:0x0144, B:72:0x014d, B:74:0x0151, B:76:0x0155, B:79:0x015f, B:81:0x0163, B:84:0x0171, B:90:0x018e, B:85:0x0177, B:87:0x0180, B:66:0x0135, B:68:0x0139, B:88:0x0188, B:62:0x0127, B:89:0x0189, B:22:0x0057, B:29:0x0088, B:31:0x008e, B:34:0x0094, B:36:0x0098, B:25:0x0064, B:55:0x0107, B:59:0x0120, B:58:0x0111), top: B:104:0x0028, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00f3 A[Catch: all -> 0x018f, TryCatch #1 {all -> 0x018f, blocks: (B:14:0x0030, B:47:0x00ea, B:19:0x0046, B:40:0x00c2, B:42:0x00ca, B:44:0x00d0, B:48:0x00f3, B:49:0x00fa, B:50:0x00fb, B:52:0x00ff, B:54:0x0105, B:63:0x012e, B:69:0x0144, B:72:0x014d, B:74:0x0151, B:76:0x0155, B:79:0x015f, B:81:0x0163, B:84:0x0171, B:90:0x018e, B:85:0x0177, B:87:0x0180, B:66:0x0135, B:68:0x0139, B:88:0x0188, B:62:0x0127, B:89:0x0189, B:22:0x0057, B:29:0x0088, B:31:0x008e, B:34:0x0094, B:36:0x0098, B:25:0x0064, B:55:0x0107, B:59:0x0120, B:58:0x0111), top: B:104:0x0028, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00fb A[Catch: all -> 0x018f, TryCatch #1 {all -> 0x018f, blocks: (B:14:0x0030, B:47:0x00ea, B:19:0x0046, B:40:0x00c2, B:42:0x00ca, B:44:0x00d0, B:48:0x00f3, B:49:0x00fa, B:50:0x00fb, B:52:0x00ff, B:54:0x0105, B:63:0x012e, B:69:0x0144, B:72:0x014d, B:74:0x0151, B:76:0x0155, B:79:0x015f, B:81:0x0163, B:84:0x0171, B:90:0x018e, B:85:0x0177, B:87:0x0180, B:66:0x0135, B:68:0x0139, B:88:0x0188, B:62:0x0127, B:89:0x0189, B:22:0x0057, B:29:0x0088, B:31:0x008e, B:34:0x0094, B:36:0x0098, B:25:0x0064, B:55:0x0107, B:59:0x0120, B:58:0x0111), top: B:104:0x0028, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e7, code lost:
    
        if (b(r1, r8) == r2) goto L46;
     */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object k(java.lang.String r17, java.lang.String r18, com.vuitton.foundation.model.domain.model.authentication.social.SocialLoginBody r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instruction units count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.TwistAuthRepositoryImpl.k(java.lang.String, java.lang.String, com.vuitton.foundation.model.domain.model.authentication.social.SocialLoginBody, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    public final Object l(String str, ContinuationImpl continuationImpl) {
        TwistAuthRepositoryImpl$forgetPasswordInitiate$1 twistAuthRepositoryImpl$forgetPasswordInitiate$1;
        Object failure;
        if (continuationImpl instanceof TwistAuthRepositoryImpl$forgetPasswordInitiate$1) {
            twistAuthRepositoryImpl$forgetPasswordInitiate$1 = (TwistAuthRepositoryImpl$forgetPasswordInitiate$1) continuationImpl;
            int i2 = twistAuthRepositoryImpl$forgetPasswordInitiate$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistAuthRepositoryImpl$forgetPasswordInitiate$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistAuthRepositoryImpl$forgetPasswordInitiate$1 = new TwistAuthRepositoryImpl$forgetPasswordInitiate$1(this, continuationImpl);
            }
        } else {
            twistAuthRepositoryImpl$forgetPasswordInitiate$1 = new TwistAuthRepositoryImpl$forgetPasswordInitiate$1(this, continuationImpl);
        }
        Object obj = twistAuthRepositoryImpl$forgetPasswordInitiate$1.f48102b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistAuthRepositoryImpl$forgetPasswordInitiate$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                AuthApi authApi = this.f48082b;
                ForgetPasswordInitiateDto forgetPasswordInitiateDto = new ForgetPasswordInitiateDto(str);
                twistAuthRepositoryImpl$forgetPasswordInitiate$1.d = 1;
                if (authApi.forgetPasswordInitiate(forgetPasswordInitiateDto, twistAuthRepositoryImpl$forgetPasswordInitiate$1) == coroutineSingletons) {
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

    /* JADX WARN: Code duplicated, block: B:45:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:50:0x0103  */
    /* JADX WARN: Code duplicated, block: B:53:0x011d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0123  */
    /* JADX WARN: Code duplicated, block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    public final Object m(String str, String str2, SocialRegisterBody socialRegisterBody, ContinuationImpl continuationImpl) {
        TwistAuthRepositoryImpl$socialRegister$1 twistAuthRepositoryImpl$socialRegister$1;
        Object failure;
        Throwable thA;
        Object obj;
        Throwable thA2;
        Object objU;
        String str3;
        SocialRegisterBody socialRegisterBody2;
        String str4;
        int i2;
        int i3;
        int i4;
        if (continuationImpl instanceof TwistAuthRepositoryImpl$socialRegister$1) {
            twistAuthRepositoryImpl$socialRegister$1 = (TwistAuthRepositoryImpl$socialRegister$1) continuationImpl;
            int i5 = twistAuthRepositoryImpl$socialRegister$1.f48160j;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                twistAuthRepositoryImpl$socialRegister$1.f48160j = i5 - Integer.MIN_VALUE;
            } else {
                twistAuthRepositoryImpl$socialRegister$1 = new TwistAuthRepositoryImpl$socialRegister$1(this, continuationImpl);
            }
        } else {
            twistAuthRepositoryImpl$socialRegister$1 = new TwistAuthRepositoryImpl$socialRegister$1(this, continuationImpl);
        }
        TwistAuthRepositoryImpl$socialRegister$1 twistAuthRepositoryImpl$socialRegister$2 = twistAuthRepositoryImpl$socialRegister$1;
        Object objA = twistAuthRepositoryImpl$socialRegister$2.f48158h;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i6 = twistAuthRepositoryImpl$socialRegister$2.f48160j;
        try {
            if (i6 == 0) {
                ResultKt.b(objA);
                Result.Companion companion = Result.INSTANCE;
                TwistTokenDataSource twistTokenDataSource = this.f48083c;
                twistAuthRepositoryImpl$socialRegister$2.f48154b = str;
                str3 = str2;
                twistAuthRepositoryImpl$socialRegister$2.f48155c = str3;
                socialRegisterBody2 = socialRegisterBody;
                twistAuthRepositoryImpl$socialRegister$2.d = socialRegisterBody2;
                twistAuthRepositoryImpl$socialRegister$2.f48156e = 0;
                twistAuthRepositoryImpl$socialRegister$2.f48157f = 0;
                twistAuthRepositoryImpl$socialRegister$2.g = 0;
                twistAuthRepositoryImpl$socialRegister$2.f48160j = 1;
                objA = twistTokenDataSource.a(twistAuthRepositoryImpl$socialRegister$2);
                if (objA != obj2) {
                    str4 = str;
                    i2 = 0;
                    i3 = 0;
                    i4 = 0;
                }
                return obj2;
            }
            if (i6 == 1) {
                i2 = twistAuthRepositoryImpl$socialRegister$2.g;
                int i7 = twistAuthRepositoryImpl$socialRegister$2.f48157f;
                int i8 = twistAuthRepositoryImpl$socialRegister$2.f48156e;
                socialRegisterBody2 = twistAuthRepositoryImpl$socialRegister$2.d;
                String str5 = twistAuthRepositoryImpl$socialRegister$2.f48155c;
                String str6 = twistAuthRepositoryImpl$socialRegister$2.f48154b;
                ResultKt.b(objA);
                i3 = i7;
                str4 = str6;
                i4 = i8;
                str3 = str5;
            } else {
                if (i6 != 2) {
                    if (i6 == 3) {
                        ResultKt.b(objA);
                        return ((Result) objA).f71708b;
                    }
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objA);
            }
            failure = new Result((Response) objA);
            thA = Result.a(failure);
            if (thA != null) {
                if (!(thA instanceof CancellationException)) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            obj = ((Result) failure).f71708b;
            thA2 = Result.a(obj);
            if (thA2 == null) {
                return new Result.Failure(thA2);
            }
            ResultKt.b(obj);
            twistAuthRepositoryImpl$socialRegister$2.f48154b = null;
            twistAuthRepositoryImpl$socialRegister$2.f48155c = null;
            twistAuthRepositoryImpl$socialRegister$2.d = null;
            twistAuthRepositoryImpl$socialRegister$2.f48156e = 0;
            twistAuthRepositoryImpl$socialRegister$2.f48157f = 0;
            twistAuthRepositoryImpl$socialRegister$2.f48160j = 3;
            objU = u((Response) obj, twistAuthRepositoryImpl$socialRegister$2);
            if (objU != obj2) {
                return obj2;
            }
            return objU;
            AuthToken.Twist twist = (AuthToken.Twist) objA;
            AuthToken.Twist.Guest guest = twist instanceof AuthToken.Twist.Guest ? (AuthToken.Twist.Guest) twist : null;
            String str7 = guest != null ? guest.f66592a : null;
            AuthApi authApi = this.f48082b;
            socialRegisterBody2.getClass();
            SocialRegisterBodyDto socialRegisterBodyDto = new SocialRegisterBodyDto(UserInformationDtoKt.a(socialRegisterBody2.f66661a), socialRegisterBody2.f66662b, (String) null, socialRegisterBody2.f66663c, (RegistrationAddressDto) null, UserConsentsMapperKt.c(socialRegisterBody2.d), 20, (DefaultConstructorMarker) null);
            twistAuthRepositoryImpl$socialRegister$2.f48154b = null;
            twistAuthRepositoryImpl$socialRegister$2.f48155c = null;
            twistAuthRepositoryImpl$socialRegister$2.d = null;
            twistAuthRepositoryImpl$socialRegister$2.f48156e = i4;
            twistAuthRepositoryImpl$socialRegister$2.f48157f = i3;
            twistAuthRepositoryImpl$socialRegister$2.g = i2;
            twistAuthRepositoryImpl$socialRegister$2.f48160j = 2;
            objA = authApi.socialRegister(str7, str4, str3, socialRegisterBodyDto, twistAuthRepositoryImpl$socialRegister$2);
            if (objA != obj2) {
                failure = new Result((Response) objA);
                thA = Result.a(failure);
                if (thA != null) {
                    if (!(thA instanceof CancellationException)) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                obj = ((Result) failure).f71708b;
                thA2 = Result.a(obj);
                if (thA2 == null) {
                    return new Result.Failure(thA2);
                }
                ResultKt.b(obj);
                twistAuthRepositoryImpl$socialRegister$2.f48154b = null;
                twistAuthRepositoryImpl$socialRegister$2.f48155c = null;
                twistAuthRepositoryImpl$socialRegister$2.d = null;
                twistAuthRepositoryImpl$socialRegister$2.f48156e = 0;
                twistAuthRepositoryImpl$socialRegister$2.f48157f = 0;
                twistAuthRepositoryImpl$socialRegister$2.f48160j = 3;
                objU = u((Response) obj, twistAuthRepositoryImpl$socialRegister$2);
                if (objU != obj2) {
                    return objU;
                }
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:98:0x01b8 A[Catch: all -> 0x01ef, TryCatch #1 {all -> 0x01ef, blocks: (B:11:0x0024, B:19:0x0042, B:21:0x004a, B:23:0x0050, B:26:0x0056, B:27:0x005d, B:29:0x0061, B:31:0x0067, B:40:0x0090, B:46:0x00a6, B:49:0x00af, B:51:0x00b3, B:53:0x00b7, B:54:0x00c8, B:56:0x00ce, B:58:0x00e2, B:103:0x01d2, B:59:0x00eb, B:61:0x00f7, B:62:0x0100, B:64:0x010c, B:65:0x0115, B:67:0x0121, B:68:0x012a, B:70:0x0136, B:71:0x013f, B:73:0x014b, B:74:0x0154, B:76:0x0160, B:77:0x0169, B:79:0x0175, B:80:0x017d, B:82:0x0189, B:84:0x018d, B:85:0x0191, B:87:0x0195, B:90:0x019e, B:99:0x01ba, B:91:0x01a1, B:94:0x01aa, B:95:0x01ad, B:97:0x01b5, B:98:0x01b8, B:101:0x01c5, B:102:0x01cb, B:105:0x01d9, B:108:0x01ee, B:104:0x01d7, B:43:0x0097, B:45:0x009b, B:106:0x01df, B:39:0x0089, B:107:0x01e0, B:16:0x0031, B:32:0x0069, B:36:0x0082, B:35:0x0073), top: B:122:0x0020, inners: #0 }] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v21, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r6v22, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v23, types: [java.util.ArrayList] */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    public final Object n(RegisterInitiateBody registerInitiateBody, ContinuationImpl continuationImpl) {
        TwistAuthRepositoryImpl$registerInitiate$1 twistAuthRepositoryImpl$registerInitiate$1;
        Object failure;
        String strString;
        Object failure2;
        ?? arrayList;
        List list;
        Throwable unknownError;
        InvalidAddressScope invalidAddressScope;
        Object objB;
        if (continuationImpl instanceof TwistAuthRepositoryImpl$registerInitiate$1) {
            twistAuthRepositoryImpl$registerInitiate$1 = (TwistAuthRepositoryImpl$registerInitiate$1) continuationImpl;
            int i2 = twistAuthRepositoryImpl$registerInitiate$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistAuthRepositoryImpl$registerInitiate$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistAuthRepositoryImpl$registerInitiate$1 = new TwistAuthRepositoryImpl$registerInitiate$1(this, continuationImpl);
            }
        } else {
            twistAuthRepositoryImpl$registerInitiate$1 = new TwistAuthRepositoryImpl$registerInitiate$1(this, continuationImpl);
        }
        Object objRegisterInitiate = twistAuthRepositoryImpl$registerInitiate$1.f48137b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistAuthRepositoryImpl$registerInitiate$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objRegisterInitiate);
                Result.Companion companion = Result.INSTANCE;
                AuthApi authApi = this.f48082b;
                RegisterInitiateBodyDto registerInitiateBodyDtoA = RegisterInitiateMapperKt.a(registerInitiateBody);
                twistAuthRepositoryImpl$registerInitiate$1.d = 1;
                objRegisterInitiate = authApi.registerInitiate(registerInitiateBodyDtoA, twistAuthRepositoryImpl$registerInitiate$1);
                if (objRegisterInitiate == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objRegisterInitiate);
            }
            Response response = (Response) objRegisterInitiate;
            if (response.f79449a.r) {
                RegisterInitiateResponseDto registerInitiateResponseDto = (RegisterInitiateResponseDto) response.f79450b;
                String str = registerInitiateResponseDto != null ? registerInitiateResponseDto.f44594a : null;
                if (str == null) {
                    str = "";
                }
                failure = new Result(str);
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
                throw new NativeRegisterErrorListException(CollectionsKt.O(new NativeRegisterException.UnknownError(null)));
            }
            Json json = this.f48087i;
            try {
                Result.Companion companion2 = Result.INSTANCE;
                if (StringsKt.w(strString)) {
                    objB = null;
                } else {
                    json.getClass();
                    objB = json.b(ErrorDto.INSTANCE.serializer(), strString);
                }
                failure2 = new Result(objB);
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                failure2 = new Result.Failure(th);
            }
            Throwable thA2 = Result.a(failure2);
            if (thA2 != null) {
                if (thA2 instanceof CancellationException) {
                    throw thA2;
                }
                failure2 = new Result(new Result.Failure(thA2));
            }
            Object obj = ((Result) failure2).f71708b;
            if (obj instanceof Result.Failure) {
                obj = null;
            }
            ErrorDto errorDto = (ErrorDto) obj;
            if (errorDto == null || (list = errorDto.f45747f) == null) {
                arrayList = EmptyList.f71768b;
            } else {
                List<ErrorDetailsDto> list2 = list;
                arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                for (ErrorDetailsDto errorDetailsDto : list2) {
                    String str2 = errorDetailsDto.f45738a;
                    if (Intrinsics.c(str2, NativeRegisterError.INVALID_PASSWORD.getErrorCode())) {
                        unknownError = new NativeRegisterException.InvalidPassword(errorDetailsDto.f45739b);
                    } else if (Intrinsics.c(str2, NativeRegisterError.PHONE_NUMBER_TOO_SHORT.getErrorCode())) {
                        unknownError = new NativeRegisterException.PhoneNumberTooShort(errorDetailsDto.f45739b);
                    } else if (Intrinsics.c(str2, NativeRegisterError.PHONE_NUMBER_TOO_LONG.getErrorCode())) {
                        unknownError = new NativeRegisterException.PhoneNumberTooLong(errorDetailsDto.f45739b);
                    } else if (Intrinsics.c(str2, NativeRegisterError.PHONE_NUMBER_INVALID_COUNTRY.getErrorCode())) {
                        unknownError = new NativeRegisterException.PhoneNumberInvalidCountry(errorDetailsDto.f45739b);
                    } else if (Intrinsics.c(str2, NativeRegisterError.PHONE_NUMBER_INVALID.getErrorCode())) {
                        unknownError = new NativeRegisterException.PhoneNumberInvalid(errorDetailsDto.f45739b);
                    } else if (Intrinsics.c(str2, NativeRegisterError.INVALID_POSTAL_CODE.getErrorCode())) {
                        unknownError = new NativeRegisterException.InvalidPostalCode(errorDetailsDto.f45739b);
                    } else if (Intrinsics.c(str2, NativeRegisterError.INVALID_STATE.getErrorCode())) {
                        unknownError = new NativeRegisterException.InvalidState(errorDetailsDto.f45739b);
                    } else if (Intrinsics.c(str2, NativeRegisterError.INVALID_CITY.getErrorCode())) {
                        unknownError = new NativeRegisterException.InvalidCity(errorDetailsDto.f45739b);
                    } else if (Intrinsics.c(str2, NativeRegisterError.INVALID_ADDRESS.getErrorCode())) {
                        String str3 = errorDetailsDto.f45740c;
                        if (str3 != null) {
                            switch (str3.hashCode()) {
                                case -1218714947:
                                    if (str3.equals("address1")) {
                                        invalidAddressScope = InvalidAddressScope.ADDRESS1;
                                    } else {
                                        invalidAddressScope = InvalidAddressScope.UNDEFINED;
                                    }
                                    break;
                                case -1218714946:
                                    if (str3.equals("address2")) {
                                        invalidAddressScope = InvalidAddressScope.ADDRESS2;
                                    } else {
                                        invalidAddressScope = InvalidAddressScope.UNDEFINED;
                                    }
                                    break;
                                case -1218714945:
                                    if (str3.equals("address3")) {
                                        invalidAddressScope = InvalidAddressScope.ADDRESS3;
                                    } else {
                                        invalidAddressScope = InvalidAddressScope.UNDEFINED;
                                    }
                                    break;
                                default:
                                    invalidAddressScope = InvalidAddressScope.UNDEFINED;
                                    break;
                            }
                        } else {
                            invalidAddressScope = InvalidAddressScope.UNDEFINED;
                        }
                        unknownError = new NativeRegisterException.InvalidAddress(errorDetailsDto.f45739b, invalidAddressScope);
                    } else {
                        unknownError = str2 == null ? new NativeRegisterException.UnknownError(null) : new NativeRegisterException.UnknownError(errorDetailsDto.f45739b);
                    }
                    arrayList.add(unknownError);
                }
            }
            throw new NativeRegisterErrorListException(arrayList);
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            failure = new Result.Failure(th2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00fa A[Catch: all -> 0x0135, TryCatch #0 {all -> 0x0135, blocks: (B:16:0x0034, B:17:0x0037, B:62:0x0129, B:22:0x0046, B:25:0x0050, B:51:0x00f1, B:53:0x00fa, B:57:0x010f, B:59:0x0113, B:63:0x012f, B:64:0x0134, B:28:0x005d, B:46:0x00d1, B:47:0x00d3, B:31:0x006f, B:41:0x00b2, B:34:0x007b, B:37:0x0094, B:42:0x00b5), top: B:76:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x010c  */
    /* JADX WARN: Code duplicated, block: B:57:0x010f A[Catch: all -> 0x0135, TryCatch #0 {all -> 0x0135, blocks: (B:16:0x0034, B:17:0x0037, B:62:0x0129, B:22:0x0046, B:25:0x0050, B:51:0x00f1, B:53:0x00fa, B:57:0x010f, B:59:0x0113, B:63:0x012f, B:64:0x0134, B:28:0x005d, B:46:0x00d1, B:47:0x00d3, B:31:0x006f, B:41:0x00b2, B:34:0x007b, B:37:0x0094, B:42:0x00b5), top: B:76:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0113 A[Catch: all -> 0x0135, TryCatch #0 {all -> 0x0135, blocks: (B:16:0x0034, B:17:0x0037, B:62:0x0129, B:22:0x0046, B:25:0x0050, B:51:0x00f1, B:53:0x00fa, B:57:0x010f, B:59:0x0113, B:63:0x012f, B:64:0x0134, B:28:0x005d, B:46:0x00d1, B:47:0x00d3, B:31:0x006f, B:41:0x00b2, B:34:0x007b, B:37:0x0094, B:42:0x00b5), top: B:76:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x012f A[Catch: all -> 0x0135, TryCatch #0 {all -> 0x0135, blocks: (B:16:0x0034, B:17:0x0037, B:62:0x0129, B:22:0x0046, B:25:0x0050, B:51:0x00f1, B:53:0x00fa, B:57:0x010f, B:59:0x0113, B:63:0x012f, B:64:0x0134, B:28:0x005d, B:46:0x00d1, B:47:0x00d3, B:31:0x006f, B:41:0x00b2, B:34:0x007b, B:37:0x0094, B:42:0x00b5), top: B:76:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0144  */
    /* JADX WARN: Code duplicated, block: B:72:0x0148  */
    /* JADX WARN: Code duplicated, block: B:75:0x0158  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0126, code lost:
    
        if (b((com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist.User) r13, r1) == r2) goto L61;
     */
    @Override // com.vuitton.android.domain.repository.TwistAuthRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object o(com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instruction units count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.TwistAuthRepositoryImpl.o(com.vuitton.foundation.model.domain.model.authentication.AuthToken$Twist, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final List p(AppConfig appConfig) {
        ArrayList arrayList;
        WebkitCookieManagerProxy webkitCookieManagerProxy = this.f48084e;
        Set set = f48080j;
        webkitCookieManagerProxy.getClass();
        set.getClass();
        Set set2 = webkitCookieManagerProxy.f47049c;
        set2.getClass();
        synchronized (set2) {
            try {
                Set set3 = webkitCookieManagerProxy.f47049c;
                set3.getClass();
                arrayList = new ArrayList();
                for (Object obj : set3) {
                    String host = new URI((String) obj).getHost();
                    if (host != null) {
                        Set<String> set4 = set;
                        if (!(set4 instanceof Collection) || !set4.isEmpty()) {
                            for (String str : set4) {
                                if (!host.equals(str)) {
                                    if (StringsKt.p(host, FileUtils.HIDDEN_PREFIX + str, false)) {
                                    }
                                }
                                arrayList.add(obj);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        LinkedHashSet linkedHashSetA0 = CollectionsKt.A0(arrayList);
        try {
            linkedHashSetA0.add(appConfig.G.f67239a);
        } catch (RuntimeException e2) {
            this.f48081a.d("TwistAuthRepositoryImpl", "Could not access certificate config", e2);
        }
        return CollectionsKt.y0(linkedHashSetA0);
    }

    public final Serializable q(String str, AppConfig appConfig) {
        try {
            ArrayList arrayList = new ArrayList();
            WebkitCookieManagerProxy webkitCookieManagerProxy = this.f48084e;
            if (str != null) {
                List list = (List) ((MapBuilder) webkitCookieManagerProxy.get(new URI(str), MapsKt.c())).get(LVConstants.COOKIE_HEADER);
                CollectionsKt.j(arrayList, t(list != null ? (String) CollectionsKt.firstOrNull(list) : null));
            }
            Iterator it = p(appConfig).iterator();
            while (it.hasNext()) {
                List list2 = (List) ((MapBuilder) webkitCookieManagerProxy.get(new URI((String) it.next()), MapsKt.c())).get(LVConstants.COOKIE_HEADER);
                CollectionsKt.j(arrayList, t(list2 != null ? (String) CollectionsKt.firstOrNull(list2) : null));
            }
            Result.Companion companion = Result.INSTANCE;
            return arrayList;
        } catch (RuntimeException e2) {
            this.f48081a.c("TwistAuthRepositoryImpl", "Error retrieving cookies from checkout", e2);
            Result.Companion companion2 = Result.INSTANCE;
            return new Result.Failure(e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object r(AuthToken.Twist twist, ContinuationImpl continuationImpl) {
        TwistAuthRepositoryImpl$internalSaveTokens$1 twistAuthRepositoryImpl$internalSaveTokens$1;
        Object objC;
        Result result;
        if (continuationImpl instanceof TwistAuthRepositoryImpl$internalSaveTokens$1) {
            twistAuthRepositoryImpl$internalSaveTokens$1 = (TwistAuthRepositoryImpl$internalSaveTokens$1) continuationImpl;
            int i2 = twistAuthRepositoryImpl$internalSaveTokens$1.f48110e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistAuthRepositoryImpl$internalSaveTokens$1.f48110e = i2 - Integer.MIN_VALUE;
            } else {
                twistAuthRepositoryImpl$internalSaveTokens$1 = new TwistAuthRepositoryImpl$internalSaveTokens$1(this, continuationImpl);
            }
        } else {
            twistAuthRepositoryImpl$internalSaveTokens$1 = new TwistAuthRepositoryImpl$internalSaveTokens$1(this, continuationImpl);
        }
        Object obj = twistAuthRepositoryImpl$internalSaveTokens$1.f48109c;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistAuthRepositoryImpl$internalSaveTokens$1.f48110e;
        if (i3 == 0) {
            ResultKt.b(obj);
            twistAuthRepositoryImpl$internalSaveTokens$1.f48110e = 1;
            objC = this.f48083c.c(twist, twistAuthRepositoryImpl$internalSaveTokens$1);
            if (objC != obj2) {
            }
            return obj2;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            objC = ((Result) obj).f71708b;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            result = twistAuthRepositoryImpl$internalSaveTokens$1.f48108b;
            ResultKt.b(obj);
        }
        return result.f71708b;
        Result result2 = new Result(objC);
        twistAuthRepositoryImpl$internalSaveTokens$1.f48108b = result2;
        twistAuthRepositoryImpl$internalSaveTokens$1.f48110e = 2;
        if (v(twistAuthRepositoryImpl$internalSaveTokens$1) != obj2) {
            result = result2;
            return result.f71708b;
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007d A[Catch: all -> 0x008e, TRY_ENTER, TryCatch #1 {all -> 0x008e, blocks: (B:13:0x0029, B:38:0x0088, B:35:0x007d), top: B:43:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0085, code lost:
    
        if (v(r0) == r1) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.vuitton.android.data.repository.TwistAuthRepositoryImpl$onLogout$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.data.repository.TwistAuthRepositoryImpl$onLogout$1 r0 = (com.vuitton.android.data.repository.TwistAuthRepositoryImpl$onLogout$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.TwistAuthRepositoryImpl$onLogout$1 r0 = new com.vuitton.android.data.repository.TwistAuthRepositoryImpl$onLogout$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f48123b
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
            com.vuitton.android.data.datasource.auth.TwistTokenDataSource r7 = r6.f48083c
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
            java.lang.Object r6 = r6.v(r0)     // Catch: java.lang.Throwable -> L8e
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
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.TwistAuthRepositoryImpl.s(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:112:0x0202  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.vuitton.android.data.repository.TwistAuthRepositoryImpl] */
    /* JADX WARN: Type inference failed for: r6v12, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v15, types: [java.util.ArrayList] */
    public final Object u(Response response, ContinuationImpl continuationImpl) {
        TwistAuthRepositoryImpl$processRegisterResponse$1 twistAuthRepositoryImpl$processRegisterResponse$1;
        String strString;
        Object failure;
        ?? arrayList;
        List list;
        Throwable unknownError;
        InvalidNameScope invalidNameScope;
        Object objB;
        if (continuationImpl instanceof TwistAuthRepositoryImpl$processRegisterResponse$1) {
            twistAuthRepositoryImpl$processRegisterResponse$1 = (TwistAuthRepositoryImpl$processRegisterResponse$1) continuationImpl;
            int i2 = twistAuthRepositoryImpl$processRegisterResponse$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                twistAuthRepositoryImpl$processRegisterResponse$1.d = i2 - Integer.MIN_VALUE;
            } else {
                twistAuthRepositoryImpl$processRegisterResponse$1 = new TwistAuthRepositoryImpl$processRegisterResponse$1(this, continuationImpl);
            }
        } else {
            twistAuthRepositoryImpl$processRegisterResponse$1 = new TwistAuthRepositoryImpl$processRegisterResponse$1(this, continuationImpl);
        }
        Object obj = twistAuthRepositoryImpl$processRegisterResponse$1.f48125b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = twistAuthRepositoryImpl$processRegisterResponse$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            if (!response.f79449a.r) {
                ResponseBody responseBody = response.f79451c;
                if (responseBody == null || (strString = responseBody.string()) == null) {
                    Result.Companion companion = Result.INSTANCE;
                    return new Result.Failure(new NativeRegisterErrorListException(CollectionsKt.O(new NativeRegisterException.UnknownError(null))));
                }
                Json json = this.f48087i;
                try {
                    Result.Companion companion2 = Result.INSTANCE;
                    if (StringsKt.w(strString)) {
                        objB = null;
                    } else {
                        json.getClass();
                        objB = json.b(ErrorDto.INSTANCE.serializer(), strString);
                    }
                    failure = new Result(objB);
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
                Object obj2 = ((Result) failure).f71708b;
                if (obj2 instanceof Result.Failure) {
                    obj2 = null;
                }
                ErrorDto errorDto = (ErrorDto) obj2;
                if (errorDto == null || (list = errorDto.f45747f) == null) {
                    arrayList = EmptyList.f71768b;
                } else {
                    List<ErrorDetailsDto> list2 = list;
                    arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                    for (ErrorDetailsDto errorDetailsDto : list2) {
                        String str = errorDetailsDto.f45738a;
                        String str2 = errorDetailsDto.f45739b;
                        if (Intrinsics.c(str, NativeRegisterError.INVALID_PASSWORD_RULES.getErrorCode())) {
                            unknownError = new NativeRegisterException.InvalidPasswordRules(str2);
                        } else if (Intrinsics.c(str, NativeRegisterError.INVALID_PASSWORD_CONTAINS_NAME.getErrorCode())) {
                            unknownError = new NativeRegisterException.InvalidPasswordContainsName(str2);
                        } else if (Intrinsics.c(str, NativeRegisterError.INVALID_PASSWORD_CONTAINS_EMAIL.getErrorCode())) {
                            unknownError = new NativeRegisterException.InvalidPasswordContainsEmail(str2);
                        } else if (Intrinsics.c(str, NativeRegisterError.INVALID_EMAIL.getErrorCode())) {
                            unknownError = new NativeRegisterException.InvalidEmail(str2);
                        } else if (Intrinsics.c(str, NativeRegisterError.USER_ALREADY_EXISTS.getErrorCode())) {
                            unknownError = new NativeRegisterException.UserAlreadyExists(str2);
                        } else if (Intrinsics.c(str, NativeRegisterError.BIRTHDATE_INCONSISTENT.getErrorCode())) {
                            unknownError = new NativeRegisterException.BirthdateInconsistent(str2);
                        } else if (Intrinsics.c(str, NativeRegisterError.LEGAL_AGE_BLOCKED.getErrorCode())) {
                            unknownError = new NativeRegisterException.LegalAgeBlocked(str2);
                        } else if (Intrinsics.c(str, NativeRegisterError.LEGAL_AGE_TO_BE_BLOCKED.getErrorCode())) {
                            unknownError = new NativeRegisterException.LegalAgeToBeBlocked(str2);
                        } else if (Intrinsics.c(str, NativeRegisterError.INVALID_PHONE.getErrorCode())) {
                            unknownError = new NativeRegisterException.InvalidPhone(str2);
                        } else if (Intrinsics.c(str, NativeRegisterError.INVALID_CALLING_CODE.getErrorCode())) {
                            unknownError = new NativeRegisterException.InvalidCallingCode(str2);
                        } else if (Intrinsics.c(str, NativeRegisterError.INVALID_TITLE.getErrorCode())) {
                            unknownError = new NativeRegisterException.InvalidTitle(str2);
                        } else if (Intrinsics.c(str, NativeRegisterError.INVALID_NAME.getErrorCode())) {
                            String str3 = errorDetailsDto.f45740c;
                            if (str3 != null) {
                                switch (str3) {
                                    case "lastname":
                                        invalidNameScope = InvalidNameScope.LAST_NAME;
                                        break;
                                    case "firstname2":
                                        invalidNameScope = InvalidNameScope.FIRST_NAME2;
                                        break;
                                    case "firstname":
                                        invalidNameScope = InvalidNameScope.FIRST_NAME;
                                        break;
                                    case "lastname2":
                                        invalidNameScope = InvalidNameScope.LAST_NAME2;
                                        break;
                                    default:
                                        invalidNameScope = InvalidNameScope.UNDEFINED;
                                        break;
                                }
                            } else {
                                invalidNameScope = InvalidNameScope.UNDEFINED;
                            }
                            unknownError = new NativeRegisterException.InvalidName(str2, invalidNameScope);
                        } else if (Intrinsics.c(str, NativeRegisterError.EMAIL_AND_USERNAME_NOT_MATCH.getErrorCode())) {
                            unknownError = new NativeRegisterException.EmailAndUsernameNotMatch(str2);
                        } else if (Intrinsics.c(str, NativeRegisterError.INVALID_OTP.getErrorCode())) {
                            unknownError = new NativeRegisterException.InvalidOtp(str2);
                        } else {
                            unknownError = str == null ? new NativeRegisterException.UnknownError(null) : new NativeRegisterException.UnknownError(str2);
                        }
                        arrayList.add(unknownError);
                    }
                }
                Result.Companion companion4 = Result.INSTANCE;
                return new Result.Failure(new NativeRegisterErrorListException(arrayList));
            }
            ApiTokenDto apiTokenDto = (ApiTokenDto) response.f79450b;
            AuthToken.Twist.User userB = apiTokenDto != null ? ApiTokenMapperKt.b(apiTokenDto) : null;
            if (userB == null) {
                Result.Companion companion5 = Result.INSTANCE;
                return new Result.Failure(new NativeRegisterErrorListException(CollectionsKt.O(new NativeRegisterException.UnknownError("Response marked as successful but no credentials found"))));
            }
            twistAuthRepositoryImpl$processRegisterResponse$1.d = 1;
            if (b(userB, twistAuthRepositoryImpl$processRegisterResponse$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        Result.Companion companion6 = Result.INSTANCE;
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0074  */
    /* JADX WARN: Code duplicated, block: B:37:0x0088  */
    /* JADX WARN: Code duplicated, block: B:43:0x0096  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a4 A[PHI: r9
      0x00a4: PHI (r9v21 java.lang.Object) = (r9v17 java.lang.Object), (r9v25 java.lang.Object) binds: [B:45:0x00a1, B:17:0x003d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:49:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b9, code lost:
    
        if (r8.g.a((java.lang.String) r9, r0) == r1) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object v(kotlin.coroutines.jvm.internal.ContinuationImpl r9) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.vuitton.android.data.repository.TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1
            if (r0 == 0) goto L13
            r0 = r9
            com.vuitton.android.data.repository.TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1 r0 = (com.vuitton.android.data.repository.TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1) r0
            int r1 = r0.f48146f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f48146f = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1 r0 = new com.vuitton.android.data.repository.TwistAuthRepositoryImpl$sendAnalyticUserIdProperty$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f48146f
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L54
            if (r2 == r6) goto L50
            if (r2 == r5) goto L46
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L37
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            r9.getClass()
            goto Lbc
        L37:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r7
        L3d:
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
            goto La4
        L46:
            java.lang.String r2 = r0.f48143b
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
            goto L82
        L50:
            kotlin.ResultKt.b(r9)
            goto L62
        L54:
            kotlin.ResultKt.b(r9)
            r0.f48146f = r6
            com.vuitton.android.data.datasource.auth.TwistTokenDataSource r9 = r8.f48083c
            java.lang.Object r9 = r9.a(r0)
            if (r9 != r1) goto L62
            goto Lbb
        L62:
            com.vuitton.foundation.model.domain.model.authentication.AuthToken$Twist r9 = (com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist) r9
            if (r9 == 0) goto L74
            boolean r2 = r9 instanceof com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist.User
            if (r2 == 0) goto L6d
            com.vuitton.foundation.model.domain.model.authentication.AuthToken$Twist$User r9 = (com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist.User) r9
            goto L6e
        L6d:
            r9 = r7
        L6e:
            if (r9 == 0) goto L74
            java.lang.String r9 = r9.f66594a
            r2 = r9
            goto L75
        L74:
            r2 = r7
        L75:
            r0.f48143b = r2
            r0.f48146f = r5
            com.vuitton.android.data.datasource.profile.ProfileLocalDataSource r9 = r8.f48086h
            java.lang.Object r9 = r9.b(r0)
            if (r9 != r1) goto L82
            goto Lbb
        L82:
            kotlin.Result$Companion r5 = kotlin.Result.INSTANCE
            boolean r5 = r9 instanceof kotlin.Result.Failure
            if (r5 == 0) goto L89
            r9 = r7
        L89:
            com.vuitton.foundation.model.domain.model.profile.Profile r9 = (com.vuitton.foundation.model.domain.model.profile.Profile) r9
            if (r9 == 0) goto L96
            com.vuitton.foundation.model.domain.model.profile.Profile$Id r9 = r9.f68164a
            if (r9 == 0) goto L96
            java.lang.String r9 = r9.getF68177a()
            goto L97
        L96:
            r9 = r7
        L97:
            r0.f48143b = r7
            r0.f48146f = r4
            com.vuitton.android.data.datasource.analytic.AnalyticLocalDataSource r4 = r8.f48085f
            java.lang.Object r9 = r4.a(r2, r9, r0)
            if (r9 != r1) goto La4
            goto Lbb
        La4:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r9 instanceof kotlin.Result.Failure
            if (r2 != 0) goto Lbc
            r2 = r9
            java.lang.String r2 = (java.lang.String) r2
            r0.f48143b = r7
            r0.f48144c = r9
            r0.f48146f = r3
            com.vuitton.android.data.datasource.analytic.AnalyticRemoteDataSource r8 = r8.g
            java.lang.Object r8 = r8.a(r2, r0)
            if (r8 != r1) goto Lbc
        Lbb:
            return r1
        Lbc:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.TwistAuthRepositoryImpl.v(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
