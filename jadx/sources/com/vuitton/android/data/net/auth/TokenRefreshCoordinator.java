package com.vuitton.android.data.net.auth;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.net.interceptor.AddSfidAndSlasTokenInterceptorKt;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.SalesforceAuthRepository;
import com.vuitton.android.domain.repository.TwistAuthRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.error.session.SessionException;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import com.vuitton.foundation.model.domain.model.time.TimeProvider;
import defpackage.md;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;", "", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lcom/vuitton/android/domain/repository/TwistAuthRepository;", "twistAuthRepository", "Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;", "salesforceAuthRepository", "Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;", "timeProvider", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TokenRefreshCoordinator {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f47024h = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AuthTokenRepository f47025a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TwistAuthRepository f47026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SalesforceAuthRepository f47027c;
    public final TimeProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Logger f47028e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutexImpl f47029f;
    public long g;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator$Companion;", "", "", "TAG", "Ljava/lang/String;", "REFRESH_LOG_TAG", "", "MIN_REFRESH_INTERVAL_MS", "J", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public TokenRefreshCoordinator(AuthTokenRepository authTokenRepository, TwistAuthRepository twistAuthRepository, SalesforceAuthRepository salesforceAuthRepository, TimeProvider timeProvider, Logger logger) {
        authTokenRepository.getClass();
        twistAuthRepository.getClass();
        salesforceAuthRepository.getClass();
        timeProvider.getClass();
        logger.getClass();
        this.f47025a = authTokenRepository;
        this.f47026b = twistAuthRepository;
        this.f47027c = salesforceAuthRepository;
        this.d = timeProvider;
        this.f47028e = logger;
        this.f47029f = MutexKt.a();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
    
        if (r8 == r1) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
    
        if (r8 == r1) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0062, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.authentication.AuthToken r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            Method dump skipped, instruction units count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.net.auth.TokenRefreshCoordinator.a(com.vuitton.foundation.model.domain.model.authentication.AuthToken, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:53:0x010a  */
    /* JADX WARN: Code duplicated, block: B:54:0x010c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0113 A[Catch: all -> 0x0118, TryCatch #1 {all -> 0x0118, blocks: (B:51:0x00fc, B:55:0x010d, B:57:0x0113, B:62:0x011d, B:63:0x0144, B:47:0x00d7), top: B:83:0x00d7 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x011b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x011d A[Catch: all -> 0x0118, TryCatch #1 {all -> 0x0118, blocks: (B:51:0x00fc, B:55:0x010d, B:57:0x0113, B:62:0x011d, B:63:0x0144, B:47:0x00d7), top: B:83:0x00d7 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0144 A[Catch: all -> 0x0118, TRY_LEAVE, TryCatch #1 {all -> 0x0118, blocks: (B:51:0x00fc, B:55:0x010d, B:57:0x0113, B:62:0x011d, B:63:0x0144, B:47:0x00d7), top: B:83:0x00d7 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0182  */
    /* JADX WARN: Code duplicated, block: B:76:0x0186  */
    /* JADX WARN: Code duplicated, block: B:79:0x019b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:81:0x01a1  */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x015d, code lost:
    
        if (r0 == r4) goto L65;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:62:0x011d, please report this as an issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(kotlin.coroutines.jvm.internal.ContinuationImpl r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.net.auth.TokenRefreshCoordinator.b(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0098 A[Catch: all -> 0x004d, TRY_LEAVE, TryCatch #2 {all -> 0x004d, blocks: (B:21:0x0049, B:34:0x0092, B:36:0x0098, B:41:0x00a8, B:43:0x00b6, B:48:0x00c4, B:46:0x00be, B:49:0x00c9, B:30:0x0079), top: B:62:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00a8 A[Catch: all -> 0x004d, TRY_ENTER, TryCatch #2 {all -> 0x004d, blocks: (B:21:0x0049, B:34:0x0092, B:36:0x0098, B:41:0x00a8, B:43:0x00b6, B:48:0x00c4, B:46:0x00be, B:49:0x00c9, B:30:0x0079), top: B:62:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.vuitton.android.data.net.auth.TokenRefreshCoordinator] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v11, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v2, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r12v5, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v9 */
    public final Object c(String str, String str2, ContinuationImpl continuationImpl) throws Throwable {
        TokenRefreshCoordinator$refreshOnAuthError$1 tokenRefreshCoordinator$refreshOnAuthError$1;
        ?? r10;
        ?? r2;
        Mutex mutex;
        int i2;
        String str3;
        int i3;
        ?? r3;
        AuthToken authToken;
        Object objA;
        ?? r11;
        ?? r12;
        if (continuationImpl instanceof TokenRefreshCoordinator$refreshOnAuthError$1) {
            tokenRefreshCoordinator$refreshOnAuthError$1 = (TokenRefreshCoordinator$refreshOnAuthError$1) continuationImpl;
            int i4 = tokenRefreshCoordinator$refreshOnAuthError$1.f47046i;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                tokenRefreshCoordinator$refreshOnAuthError$1.f47046i = i4 - Integer.MIN_VALUE;
            } else {
                tokenRefreshCoordinator$refreshOnAuthError$1 = new TokenRefreshCoordinator$refreshOnAuthError$1(this, continuationImpl);
            }
        } else {
            tokenRefreshCoordinator$refreshOnAuthError$1 = new TokenRefreshCoordinator$refreshOnAuthError$1(this, continuationImpl);
        }
        Object obj = tokenRefreshCoordinator$refreshOnAuthError$1.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = tokenRefreshCoordinator$refreshOnAuthError$1.f47046i;
        int i6 = 0;
        try {
            if (i5 == 0) {
                ResultKt.b(obj);
                tokenRefreshCoordinator$refreshOnAuthError$1.f47041b = str;
                tokenRefreshCoordinator$refreshOnAuthError$1.f47042c = str2;
                MutexImpl mutexImpl = this.f47029f;
                tokenRefreshCoordinator$refreshOnAuthError$1.d = mutexImpl;
                tokenRefreshCoordinator$refreshOnAuthError$1.f47043e = 0;
                tokenRefreshCoordinator$refreshOnAuthError$1.f47046i = 1;
                if (mutexImpl.c(tokenRefreshCoordinator$refreshOnAuthError$1) != coroutineSingletons) {
                    r2 = str2;
                    mutex = mutexImpl;
                    i2 = 0;
                }
                return coroutineSingletons;
            }
            if (i5 == 1) {
                int i7 = tokenRefreshCoordinator$refreshOnAuthError$1.f47043e;
                Mutex mutex2 = tokenRefreshCoordinator$refreshOnAuthError$1.d;
                String str4 = tokenRefreshCoordinator$refreshOnAuthError$1.f47042c;
                String str5 = tokenRefreshCoordinator$refreshOnAuthError$1.f47041b;
                ResultKt.b(obj);
                i2 = i7;
                str = str5;
                r2 = str4;
                mutex = mutex2;
            } else {
                if (i5 == 2) {
                    i6 = tokenRefreshCoordinator$refreshOnAuthError$1.f47044f;
                    i3 = tokenRefreshCoordinator$refreshOnAuthError$1.f47043e;
                    Mutex mutex3 = tokenRefreshCoordinator$refreshOnAuthError$1.d;
                    String str6 = tokenRefreshCoordinator$refreshOnAuthError$1.f47042c;
                    str3 = tokenRefreshCoordinator$refreshOnAuthError$1.f47041b;
                    ResultKt.b(obj);
                    r3 = str6;
                    str2 = mutex3;
                    authToken = (AuthToken) obj;
                    if (authToken instanceof AuthToken.None) {
                        Result.Companion companion = Result.INSTANCE;
                        try {
                            objA = new Result.Failure(new SessionException.RefreshTokenUnknownException());
                            r12 = str2;
                        } catch (Throwable th) {
                            th = th;
                            r10 = str2;
                            r10.d(null);
                            throw th;
                        }
                    } else {
                        Pair pairA = AddSfidAndSlasTokenInterceptorKt.a(authToken);
                        String str7 = (String) pairA.f71705b;
                        String str8 = (String) pairA.f71706c;
                        if ((r3 != 0 || r3.equals(str8)) && (str3 == null || str3.equals(str7))) {
                            tokenRefreshCoordinator$refreshOnAuthError$1.f47041b = null;
                            tokenRefreshCoordinator$refreshOnAuthError$1.f47042c = null;
                            tokenRefreshCoordinator$refreshOnAuthError$1.d = str2;
                            tokenRefreshCoordinator$refreshOnAuthError$1.f47043e = i3;
                            tokenRefreshCoordinator$refreshOnAuthError$1.f47044f = i6;
                            tokenRefreshCoordinator$refreshOnAuthError$1.f47046i = 3;
                            objA = a(authToken, tokenRefreshCoordinator$refreshOnAuthError$1);
                            if (objA != coroutineSingletons) {
                                r11 = str2;
                            }
                            return coroutineSingletons;
                        }
                        Result.Companion companion2 = Result.INSTANCE;
                        r11 = str2;
                        objA = authToken;
                    }
                    r12.d(null);
                    return objA;
                }
                if (i5 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r10 = tokenRefreshCoordinator$refreshOnAuthError$1.d;
                try {
                    ResultKt.b(obj);
                    objA = ((Result) obj).f71708b;
                    r11 = r10;
                } catch (Throwable th2) {
                    th = th2;
                    r10.d(null);
                    throw th;
                }
            }
            r12 = r11;
            r12.d(null);
            return objA;
            AuthTokenRepository authTokenRepository = this.f47025a;
            tokenRefreshCoordinator$refreshOnAuthError$1.f47041b = str;
            tokenRefreshCoordinator$refreshOnAuthError$1.f47042c = r2;
            tokenRefreshCoordinator$refreshOnAuthError$1.d = mutex;
            tokenRefreshCoordinator$refreshOnAuthError$1.f47043e = i2;
            tokenRefreshCoordinator$refreshOnAuthError$1.f47044f = 0;
            tokenRefreshCoordinator$refreshOnAuthError$1.f47046i = 2;
            Object objD = authTokenRepository.d(tokenRefreshCoordinator$refreshOnAuthError$1);
            if (objD != coroutineSingletons) {
                str3 = str;
                i3 = i2;
                obj = objD;
                r3 = r2;
                str2 = mutex;
                authToken = (AuthToken) obj;
                if (authToken instanceof AuthToken.None) {
                    Result.Companion companion3 = Result.INSTANCE;
                    objA = new Result.Failure(new SessionException.RefreshTokenUnknownException());
                    r12 = str2;
                } else {
                    Pair pairA2 = AddSfidAndSlasTokenInterceptorKt.a(authToken);
                    String str9 = (String) pairA2.f71705b;
                    String str10 = (String) pairA2.f71706c;
                    if (r3 != 0) {
                        tokenRefreshCoordinator$refreshOnAuthError$1.f47041b = null;
                        tokenRefreshCoordinator$refreshOnAuthError$1.f47042c = null;
                        tokenRefreshCoordinator$refreshOnAuthError$1.d = str2;
                        tokenRefreshCoordinator$refreshOnAuthError$1.f47043e = i3;
                        tokenRefreshCoordinator$refreshOnAuthError$1.f47044f = i6;
                        tokenRefreshCoordinator$refreshOnAuthError$1.f47046i = 3;
                        objA = a(authToken, tokenRefreshCoordinator$refreshOnAuthError$1);
                        if (objA != coroutineSingletons) {
                            r11 = str2;
                        }
                    } else {
                        tokenRefreshCoordinator$refreshOnAuthError$1.f47041b = null;
                        tokenRefreshCoordinator$refreshOnAuthError$1.f47042c = null;
                        tokenRefreshCoordinator$refreshOnAuthError$1.d = str2;
                        tokenRefreshCoordinator$refreshOnAuthError$1.f47043e = i3;
                        tokenRefreshCoordinator$refreshOnAuthError$1.f47044f = i6;
                        tokenRefreshCoordinator$refreshOnAuthError$1.f47046i = 3;
                        objA = a(authToken, tokenRefreshCoordinator$refreshOnAuthError$1);
                        if (objA != coroutineSingletons) {
                            r11 = str2;
                        }
                    }
                    r12 = r11;
                }
                r12.d(null);
                return objA;
            }
            return coroutineSingletons;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
