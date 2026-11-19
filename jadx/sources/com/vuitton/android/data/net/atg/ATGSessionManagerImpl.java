package com.vuitton.android.data.net.atg;

import android.content.Context;
import android.webkit.CookieManager;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.net.cookiejar.WebkitCookieManagerProxy;
import com.vuitton.android.domain.repository.ATGSessionRepository;
import com.vuitton.android.domain.repository.AppConfigRepository;
import com.vuitton.android.domain.repository.UserPreferencesRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.error.session.SessionException;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import dagger.hilt.android.qualifiers.ApplicationContext;
import defpackage.md;
import defpackage.v40;
import java.net.URI;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.MapsKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import retrofit2.HttpException;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0010B;\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;", "Lcom/vuitton/android/data/net/atg/ATGSessionManager;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/domain/repository/ATGSessionRepository;", "atgSessionRepository", "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;", "cookieManager", "Lcom/vuitton/android/domain/repository/AppConfigRepository;", "appConfigRepository", "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "userPreferencesRepository", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Landroid/content/Context;Lcom/vuitton/android/domain/repository/ATGSessionRepository;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ATGSessionManagerImpl implements ATGSessionManager {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f46997f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ATGSessionRepository f46998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WebkitCookieManagerProxy f46999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppConfigRepository f47000c;
    public final UserPreferencesRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Logger f47001e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$Companion;", "", "", "HTTP_ERROR_CODE_401", "I", "HTTP_ERROR_CODE_409", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public ATGSessionManagerImpl(@ApplicationContext Context context, ATGSessionRepository aTGSessionRepository, WebkitCookieManagerProxy webkitCookieManagerProxy, AppConfigRepository appConfigRepository, UserPreferencesRepository userPreferencesRepository, Logger logger) {
        context.getClass();
        aTGSessionRepository.getClass();
        webkitCookieManagerProxy.getClass();
        appConfigRepository.getClass();
        userPreferencesRepository.getClass();
        logger.getClass();
        this.f46998a = aTGSessionRepository;
        this.f46999b = webkitCookieManagerProxy;
        this.f47000c = appConfigRepository;
        this.d = userPreferencesRepository;
        this.f47001e = logger;
    }

    @Override // com.vuitton.android.data.net.atg.ATGSessionManager
    public final Object a(Function2 function2, Continuation continuation) {
        return b(new ATGSessionManagerImpl$withAuthATGSessionOrThrow$2(function2, null), (ContinuationImpl) continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.data.net.atg.ATGSessionManager
    public final Object b(Function2 function2, ContinuationImpl continuationImpl) throws Throwable {
        ATGSessionManagerImpl$withATGSession$1 aTGSessionManagerImpl$withATGSession$1;
        Throwable th;
        Function1 function1;
        if (continuationImpl instanceof ATGSessionManagerImpl$withATGSession$1) {
            aTGSessionManagerImpl$withATGSession$1 = (ATGSessionManagerImpl$withATGSession$1) continuationImpl;
            int i2 = aTGSessionManagerImpl$withATGSession$1.f47010e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aTGSessionManagerImpl$withATGSession$1.f47010e = i2 - Integer.MIN_VALUE;
            } else {
                aTGSessionManagerImpl$withATGSession$1 = new ATGSessionManagerImpl$withATGSession$1(this, continuationImpl);
            }
        } else {
            aTGSessionManagerImpl$withATGSession$1 = new ATGSessionManagerImpl$withATGSession$1(this, continuationImpl);
        }
        Object failure = aTGSessionManagerImpl$withATGSession$1.f47009c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aTGSessionManagerImpl$withATGSession$1.f47010e;
        if (i3 != 0) {
            if (i3 == 1) {
                function1 = (Function1) aTGSessionManagerImpl$withATGSession$1.f47008b;
                try {
                    ResultKt.b(failure);
                } catch (Throwable th2) {
                    th = th2;
                    Result.Companion companion = Result.INSTANCE;
                    failure = new Result.Failure(th);
                }
            } else {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(failure);
            }
            return failure;
        }
        ResultKt.b(failure);
        ATGSessionManagerImpl$withATGSession$performBody$1 aTGSessionManagerImpl$withATGSession$performBody$1 = new ATGSessionManagerImpl$withATGSession$performBody$1(this, function2, null);
        try {
            Result.Companion companion2 = Result.INSTANCE;
            aTGSessionManagerImpl$withATGSession$1.f47008b = aTGSessionManagerImpl$withATGSession$performBody$1;
            aTGSessionManagerImpl$withATGSession$1.f47010e = 1;
            Object objInvoke = aTGSessionManagerImpl$withATGSession$performBody$1.invoke(aTGSessionManagerImpl$withATGSession$1);
            if (objInvoke != coroutineSingletons) {
                failure = objInvoke;
                function1 = aTGSessionManagerImpl$withATGSession$performBody$1;
            }
        } catch (Throwable th3) {
            th = th3;
            function1 = aTGSessionManagerImpl$withATGSession$performBody$1;
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        return coroutineSingletons;
        Result.Companion companion4 = Result.INSTANCE;
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (!(thA instanceof HttpException)) {
                throw thA;
            }
            int i4 = ((HttpException) thA).f79346b;
            if (i4 != 409 && i4 != 401) {
                throw thA;
            }
            this.f46999b.a();
            aTGSessionManagerImpl$withATGSession$1.f47008b = null;
            aTGSessionManagerImpl$withATGSession$1.f47010e = 2;
            failure = function1.invoke(aTGSessionManagerImpl$withATGSession$1);
            if (failure == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return failure;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0097, code lost:
    
        if (r5.b(r3, r0) == r1) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.vuitton.android.data.net.atg.ATGSessionManagerImpl$authenticateATGSession$1
            if (r0 == 0) goto L13
            r0 = r9
            com.vuitton.android.data.net.atg.ATGSessionManagerImpl$authenticateATGSession$1 r0 = (com.vuitton.android.data.net.atg.ATGSessionManagerImpl$authenticateATGSession$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.net.atg.ATGSessionManagerImpl$authenticateATGSession$1 r0 = new com.vuitton.android.data.net.atg.ATGSessionManagerImpl$authenticateATGSession$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.f47002b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 0
            com.vuitton.android.domain.repository.UserPreferencesRepository r4 = r8.d
            com.vuitton.android.domain.repository.ATGSessionRepository r5 = r8.f46998a
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L44
            if (r2 == r7) goto L3a
            if (r2 != r6) goto L34
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> La3
            kotlin.Result r9 = (kotlin.Result) r9     // Catch: java.lang.Throwable -> La3
            java.lang.Object r8 = r9.f71708b     // Catch: java.lang.Throwable -> La3
            goto L9a
        L34:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r3
        L3a:
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L42
            kotlin.Result r9 = (kotlin.Result) r9     // Catch: java.lang.Throwable -> L42
            java.lang.Object r9 = r9.f71708b     // Catch: java.lang.Throwable -> L42
            goto L63
        L42:
            r9 = move-exception
            goto L6f
        L44:
            kotlin.ResultKt.b(r9)
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L42
            java.lang.String r9 = r4.c()     // Catch: java.lang.Throwable -> L42
            if (r9 == 0) goto L57
            boolean r2 = kotlin.text.StringsKt.w(r9)     // Catch: java.lang.Throwable -> L42
            r2 = r2 ^ r7
            if (r2 != r7) goto L57
            goto L58
        L57:
            r9 = r3
        L58:
            if (r9 == 0) goto L69
            r0.d = r7     // Catch: java.lang.Throwable -> L42
            java.lang.Object r9 = r5.b(r9, r0)     // Catch: java.lang.Throwable -> L42
            if (r9 != r1) goto L63
            goto L99
        L63:
            kotlin.Result r2 = new kotlin.Result     // Catch: java.lang.Throwable -> L42
            r2.<init>(r9)     // Catch: java.lang.Throwable -> L42
            goto L76
        L69:
            com.vuitton.foundation.model.domain.error.session.SessionException$NoAccessTokenException r9 = new com.vuitton.foundation.model.domain.error.session.SessionException$NoAccessTokenException     // Catch: java.lang.Throwable -> L42
            r9.<init>()     // Catch: java.lang.Throwable -> L42
            throw r9     // Catch: java.lang.Throwable -> L42
        L6f:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r2 = new kotlin.Result$Failure
            r2.<init>(r9)
        L76:
            java.lang.Throwable r9 = kotlin.Result.a(r2)
            if (r9 == 0) goto Lab
            com.vuitton.android.data.net.cookiejar.WebkitCookieManagerProxy r8 = r8.f46999b     // Catch: java.lang.Throwable -> La3
            r8.a()     // Catch: java.lang.Throwable -> La3
            java.lang.String r8 = r4.c()     // Catch: java.lang.Throwable -> La3
            if (r8 == 0) goto L8f
            boolean r9 = kotlin.text.StringsKt.w(r8)     // Catch: java.lang.Throwable -> La3
            r9 = r9 ^ r7
            if (r9 != r7) goto L8f
            r3 = r8
        L8f:
            if (r3 == 0) goto L9d
            r0.d = r6     // Catch: java.lang.Throwable -> La3
            java.lang.Object r8 = r5.b(r3, r0)     // Catch: java.lang.Throwable -> La3
            if (r8 != r1) goto L9a
        L99:
            return r1
        L9a:
            kotlin.Result r8 = new kotlin.Result     // Catch: java.lang.Throwable -> La3
            goto Lab
        L9d:
            com.vuitton.foundation.model.domain.error.session.SessionException$NoAccessTokenException r8 = new com.vuitton.foundation.model.domain.error.session.SessionException$NoAccessTokenException     // Catch: java.lang.Throwable -> La3
            r8.<init>()     // Catch: java.lang.Throwable -> La3
            throw r8     // Catch: java.lang.Throwable -> La3
        La3:
            r8 = move-exception
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
        Lab:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.net.atg.ATGSessionManagerImpl.c(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0128  */
    /* JADX WARN: Code duplicated, block: B:76:0x0167  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:80:0x016f A[RETURN] */
    public final Object d(boolean z, ContinuationImpl continuationImpl) {
        ATGSessionManagerImpl$retrieveATGSessionStatus$1 aTGSessionManagerImpl$retrieveATGSessionStatus$1;
        SessionCookieState anonymous;
        String str;
        int i2;
        ATGSessionStatus authenticated;
        SessionCookieState sessionCookieState;
        ATGSessionStatus aTGSessionStatus;
        if (continuationImpl instanceof ATGSessionManagerImpl$retrieveATGSessionStatus$1) {
            aTGSessionManagerImpl$retrieveATGSessionStatus$1 = (ATGSessionManagerImpl$retrieveATGSessionStatus$1) continuationImpl;
            int i3 = aTGSessionManagerImpl$retrieveATGSessionStatus$1.g;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                aTGSessionManagerImpl$retrieveATGSessionStatus$1.g = i3 - Integer.MIN_VALUE;
            } else {
                aTGSessionManagerImpl$retrieveATGSessionStatus$1 = new ATGSessionManagerImpl$retrieveATGSessionStatus$1(this, continuationImpl);
            }
        } else {
            aTGSessionManagerImpl$retrieveATGSessionStatus$1 = new ATGSessionManagerImpl$retrieveATGSessionStatus$1(this, continuationImpl);
        }
        Object objD = aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47006e;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = aTGSessionManagerImpl$retrieveATGSessionStatus$1.g;
        WebkitCookieManagerProxy webkitCookieManagerProxy = this.f46999b;
        if (i4 == 0) {
            ResultKt.b(objD);
            String strC = this.d.c();
            if (CookieManager.getInstance().hasCookies()) {
                AppConfig appConfigC = this.f47000c.c();
                if (appConfigC == null || (str = appConfigC.y) == null) {
                    anonymous = SessionCookieState.Invalid.f47019a;
                } else {
                    URI uriL = StringKtExtKt.l(str);
                    webkitCookieManagerProxy.getClass();
                    String strB = WebkitCookieManagerProxy.b((MapBuilder) webkitCookieManagerProxy.get(uriL, MapsKt.c()), "_dynSessConf");
                    if (strB == null) {
                        anonymous = SessionCookieState.Invalid.f47019a;
                    } else {
                        String strB2 = WebkitCookieManagerProxy.b((MapBuilder) webkitCookieManagerProxy.get(uriL, MapsKt.c()), "LOGGEDSESSIONID");
                        if (strB2 == null || strB2.equals("\"\"")) {
                            strB2 = null;
                        }
                        String strB3 = WebkitCookieManagerProxy.b((MapBuilder) webkitCookieManagerProxy.get(uriL, MapsKt.c()), "JSESSIONID");
                        if (strB2 != null) {
                            anonymous = new SessionCookieState.Authenticated(new ATGSessionIdentification(strB2, strB));
                        } else {
                            anonymous = strB3 != null ? new SessionCookieState.Anonymous(new ATGSessionIdentification(strB3, strB)) : SessionCookieState.Invalid.f47019a;
                        }
                    }
                }
            } else {
                anonymous = SessionCookieState.Empty.f47018a;
            }
            if (strC != null) {
                if (!(anonymous instanceof SessionCookieState.Authenticated)) {
                    boolean z2 = anonymous instanceof SessionCookieState.Invalid;
                    Logger logger = this.f47001e;
                    i2 = 0;
                    if (z2) {
                        webkitCookieManagerProxy.a();
                        if (z) {
                            logger.c("RefreshSessionError", "SessionCookieState invalid --> Authentication failed", null);
                            throw new SessionException.SessionAuthenticationFailException();
                        }
                        aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47005c = anonymous;
                        aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47004b = z;
                        aTGSessionManagerImpl$retrieveATGSessionStatus$1.d = 0;
                        aTGSessionManagerImpl$retrieveATGSessionStatus$1.g = 1;
                        if (c(aTGSessionManagerImpl$retrieveATGSessionStatus$1) != obj) {
                            aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47005c = anonymous;
                            aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47004b = z;
                            aTGSessionManagerImpl$retrieveATGSessionStatus$1.d = i2;
                            aTGSessionManagerImpl$retrieveATGSessionStatus$1.g = 2;
                            objD = d(true, aTGSessionManagerImpl$retrieveATGSessionStatus$1);
                            if (objD != obj) {
                                sessionCookieState = anonymous;
                                aTGSessionStatus = (ATGSessionStatus) objD;
                            }
                        }
                    } else {
                        if (!(anonymous instanceof SessionCookieState.Anonymous) && !(anonymous instanceof SessionCookieState.Empty)) {
                            v40.g();
                            return null;
                        }
                        if (z) {
                            webkitCookieManagerProxy.a();
                            logger.c("RefreshSessionError", "SessionCookieState anonymous or empty --> Authentication failed", null);
                            throw new SessionException.SessionAuthenticationFailException();
                        }
                        aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47005c = anonymous;
                        aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47004b = z;
                        aTGSessionManagerImpl$retrieveATGSessionStatus$1.d = 0;
                        aTGSessionManagerImpl$retrieveATGSessionStatus$1.g = 3;
                        if (c(aTGSessionManagerImpl$retrieveATGSessionStatus$1) != obj) {
                            aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47005c = anonymous;
                            aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47004b = z;
                            aTGSessionManagerImpl$retrieveATGSessionStatus$1.d = i2;
                            aTGSessionManagerImpl$retrieveATGSessionStatus$1.g = 4;
                            objD = d(true, aTGSessionManagerImpl$retrieveATGSessionStatus$1);
                            if (objD != obj) {
                                sessionCookieState = anonymous;
                                aTGSessionStatus = (ATGSessionStatus) objD;
                            }
                        }
                    }
                    return obj;
                }
                authenticated = new ATGSessionStatus.Authenticated(strC, ((SessionCookieState.Authenticated) anonymous).f47017a);
                if (authenticated != null) {
                    return authenticated;
                }
            }
            if (!(anonymous instanceof SessionCookieState.Authenticated) || (anonymous instanceof SessionCookieState.Invalid)) {
                webkitCookieManagerProxy.a();
                return ATGSessionStatus.Empty.f47015a;
            }
            if (anonymous instanceof SessionCookieState.Anonymous) {
                return new ATGSessionStatus.Anonymous(((SessionCookieState.Anonymous) anonymous).f47016a);
            }
            if (Intrinsics.c(anonymous, SessionCookieState.Empty.f47018a)) {
                return ATGSessionStatus.Empty.f47015a;
            }
            v40.g();
            return null;
        }
        if (i4 == 1) {
            int i5 = aTGSessionManagerImpl$retrieveATGSessionStatus$1.d;
            boolean z3 = aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47004b;
            SessionCookieState sessionCookieState2 = aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47005c;
            ResultKt.b(objD);
            i2 = i5;
            z = z3;
            anonymous = sessionCookieState2;
            aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47005c = anonymous;
            aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47004b = z;
            aTGSessionManagerImpl$retrieveATGSessionStatus$1.d = i2;
            aTGSessionManagerImpl$retrieveATGSessionStatus$1.g = 2;
            objD = d(true, aTGSessionManagerImpl$retrieveATGSessionStatus$1);
            if (objD != obj) {
                sessionCookieState = anonymous;
            }
            return obj;
        }
        if (i4 != 2) {
            if (i4 == 3) {
                int i6 = aTGSessionManagerImpl$retrieveATGSessionStatus$1.d;
                boolean z4 = aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47004b;
                SessionCookieState sessionCookieState3 = aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47005c;
                ResultKt.b(objD);
                i2 = i6;
                z = z4;
                anonymous = sessionCookieState3;
                aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47005c = anonymous;
                aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47004b = z;
                aTGSessionManagerImpl$retrieveATGSessionStatus$1.d = i2;
                aTGSessionManagerImpl$retrieveATGSessionStatus$1.g = 4;
                objD = d(true, aTGSessionManagerImpl$retrieveATGSessionStatus$1);
                if (objD != obj) {
                    sessionCookieState = anonymous;
                }
                return obj;
            }
            if (i4 != 4) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            sessionCookieState = aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47005c;
            ResultKt.b(objD);
            aTGSessionStatus = (ATGSessionStatus) objD;
        } else {
            sessionCookieState = aTGSessionManagerImpl$retrieveATGSessionStatus$1.f47005c;
            ResultKt.b(objD);
        }
        aTGSessionStatus = (ATGSessionStatus) objD;
        anonymous = sessionCookieState;
        authenticated = aTGSessionStatus;
        if (authenticated != null) {
            return authenticated;
        }
        if (anonymous instanceof SessionCookieState.Authenticated) {
        }
        webkitCookieManagerProxy.a();
        return ATGSessionStatus.Empty.f47015a;
    }
}
