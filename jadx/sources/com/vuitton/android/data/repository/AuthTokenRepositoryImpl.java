package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.auth.SalesforceTokenDataSource;
import com.vuitton.android.data.datasource.auth.TwistTokenDataSource;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.foundation.model.domain.error.session.SessionException;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/AuthTokenRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;", "twistTokenDataSource", "Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;", "salesforceTokenDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;Lcom/vuitton/android/data/datasource/auth/SalesforceTokenDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AuthTokenRepositoryImpl implements AuthTokenRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TwistTokenDataSource f47329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SalesforceTokenDataSource f47330b;

    @Inject
    public AuthTokenRepositoryImpl(TwistTokenDataSource twistTokenDataSource, SalesforceTokenDataSource salesforceTokenDataSource) {
        twistTokenDataSource.getClass();
        salesforceTokenDataSource.getClass();
        this.f47329a = twistTokenDataSource;
        this.f47330b = salesforceTokenDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AuthTokenRepository
    public final Object a(ContinuationImpl continuationImpl) {
        AuthTokenRepositoryImpl$clearSalesforceTokens$1 authTokenRepositoryImpl$clearSalesforceTokens$1;
        if (continuationImpl instanceof AuthTokenRepositoryImpl$clearSalesforceTokens$1) {
            authTokenRepositoryImpl$clearSalesforceTokens$1 = (AuthTokenRepositoryImpl$clearSalesforceTokens$1) continuationImpl;
            int i2 = authTokenRepositoryImpl$clearSalesforceTokens$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                authTokenRepositoryImpl$clearSalesforceTokens$1.d = i2 - Integer.MIN_VALUE;
            } else {
                authTokenRepositoryImpl$clearSalesforceTokens$1 = new AuthTokenRepositoryImpl$clearSalesforceTokens$1(this, continuationImpl);
            }
        } else {
            authTokenRepositoryImpl$clearSalesforceTokens$1 = new AuthTokenRepositoryImpl$clearSalesforceTokens$1(this, continuationImpl);
        }
        Object obj = authTokenRepositoryImpl$clearSalesforceTokens$1.f47331b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = authTokenRepositoryImpl$clearSalesforceTokens$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            authTokenRepositoryImpl$clearSalesforceTokens$1.d = 1;
            Object objB = this.f47330b.b(authTokenRepositoryImpl$clearSalesforceTokens$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AuthTokenRepository
    public final Object b(ContinuationImpl continuationImpl) {
        AuthTokenRepositoryImpl$clearTwistTokens$1 authTokenRepositoryImpl$clearTwistTokens$1;
        if (continuationImpl instanceof AuthTokenRepositoryImpl$clearTwistTokens$1) {
            authTokenRepositoryImpl$clearTwistTokens$1 = (AuthTokenRepositoryImpl$clearTwistTokens$1) continuationImpl;
            int i2 = authTokenRepositoryImpl$clearTwistTokens$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                authTokenRepositoryImpl$clearTwistTokens$1.d = i2 - Integer.MIN_VALUE;
            } else {
                authTokenRepositoryImpl$clearTwistTokens$1 = new AuthTokenRepositoryImpl$clearTwistTokens$1(this, continuationImpl);
            }
        } else {
            authTokenRepositoryImpl$clearTwistTokens$1 = new AuthTokenRepositoryImpl$clearTwistTokens$1(this, continuationImpl);
        }
        Object obj = authTokenRepositoryImpl$clearTwistTokens$1.f47333b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = authTokenRepositoryImpl$clearTwistTokens$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            authTokenRepositoryImpl$clearTwistTokens$1.d = 1;
            Object objB = this.f47329a.b(authTokenRepositoryImpl$clearTwistTokens$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AuthTokenRepository
    public final Object c(ContinuationImpl continuationImpl) {
        AuthTokenRepositoryImpl$getSalesforceAccessToken$1 authTokenRepositoryImpl$getSalesforceAccessToken$1;
        Object failure;
        String str;
        if (continuationImpl instanceof AuthTokenRepositoryImpl$getSalesforceAccessToken$1) {
            authTokenRepositoryImpl$getSalesforceAccessToken$1 = (AuthTokenRepositoryImpl$getSalesforceAccessToken$1) continuationImpl;
            int i2 = authTokenRepositoryImpl$getSalesforceAccessToken$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                authTokenRepositoryImpl$getSalesforceAccessToken$1.d = i2 - Integer.MIN_VALUE;
            } else {
                authTokenRepositoryImpl$getSalesforceAccessToken$1 = new AuthTokenRepositoryImpl$getSalesforceAccessToken$1(this, continuationImpl);
            }
        } else {
            authTokenRepositoryImpl$getSalesforceAccessToken$1 = new AuthTokenRepositoryImpl$getSalesforceAccessToken$1(this, continuationImpl);
        }
        Object objD = authTokenRepositoryImpl$getSalesforceAccessToken$1.f47337b;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = authTokenRepositoryImpl$getSalesforceAccessToken$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objD);
                Result.Companion companion = Result.INSTANCE;
                authTokenRepositoryImpl$getSalesforceAccessToken$1.d = 1;
                objD = d(authTokenRepositoryImpl$getSalesforceAccessToken$1);
                if (objD == obj) {
                    return obj;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objD);
            }
            AuthToken authToken = (AuthToken) objD;
            if (authToken instanceof AuthToken.Atg) {
                str = ((AuthToken.Atg) authToken).f66589b;
                if (str == null) {
                    throw new SessionException.NoAccessTokenException();
                }
            } else {
                if (!(authToken instanceof AuthToken.Twist.User)) {
                    if (!(authToken instanceof AuthToken.Twist.Guest) && !Intrinsics.c(authToken, AuthToken.None.f66591a)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    throw new SessionException.NoAccessTokenException();
                }
                str = ((AuthToken.Twist.User) authToken).f66595b;
            }
            failure = new Result(str);
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
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
    
        if (r6 == r1) goto L24;
     */
    @Override // com.vuitton.android.domain.repository.AuthTokenRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.vuitton.android.data.repository.AuthTokenRepositoryImpl$get$1
            if (r0 == 0) goto L13
            r0 = r6
            com.vuitton.android.data.repository.AuthTokenRepositoryImpl$get$1 r0 = (com.vuitton.android.data.repository.AuthTokenRepositoryImpl$get$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.AuthTokenRepositoryImpl$get$1 r0 = new com.vuitton.android.data.repository.AuthTokenRepositoryImpl$get$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f47335b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L35
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            kotlin.ResultKt.b(r6)
            goto L53
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L31:
            kotlin.ResultKt.b(r6)
            goto L43
        L35:
            kotlin.ResultKt.b(r6)
            r0.d = r4
            com.vuitton.android.data.datasource.auth.TwistTokenDataSource r6 = r5.f47329a
            java.lang.Object r6 = r6.a(r0)
            if (r6 != r1) goto L43
            goto L52
        L43:
            com.vuitton.foundation.model.domain.model.authentication.AuthToken$Twist r6 = (com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist) r6
            if (r6 == 0) goto L48
            return r6
        L48:
            r0.d = r3
            com.vuitton.android.data.datasource.auth.SalesforceTokenDataSource r5 = r5.f47330b
            java.lang.Object r6 = r5.a(r0)
            if (r6 != r1) goto L53
        L52:
            return r1
        L53:
            com.vuitton.foundation.model.domain.model.authentication.AuthToken$Atg r6 = (com.vuitton.foundation.model.domain.model.authentication.AuthToken.Atg) r6
            if (r6 == 0) goto L58
            return r6
        L58:
            com.vuitton.foundation.model.domain.model.authentication.AuthToken$None r5 = com.vuitton.foundation.model.domain.model.authentication.AuthToken.None.f66591a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.AuthTokenRepositoryImpl.d(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AuthTokenRepository
    public final Object e(ContinuationImpl continuationImpl) {
        AuthTokenRepositoryImpl$getSalesforceUserId$1 authTokenRepositoryImpl$getSalesforceUserId$1;
        Object failure;
        String str;
        if (continuationImpl instanceof AuthTokenRepositoryImpl$getSalesforceUserId$1) {
            authTokenRepositoryImpl$getSalesforceUserId$1 = (AuthTokenRepositoryImpl$getSalesforceUserId$1) continuationImpl;
            int i2 = authTokenRepositoryImpl$getSalesforceUserId$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                authTokenRepositoryImpl$getSalesforceUserId$1.d = i2 - Integer.MIN_VALUE;
            } else {
                authTokenRepositoryImpl$getSalesforceUserId$1 = new AuthTokenRepositoryImpl$getSalesforceUserId$1(this, continuationImpl);
            }
        } else {
            authTokenRepositoryImpl$getSalesforceUserId$1 = new AuthTokenRepositoryImpl$getSalesforceUserId$1(this, continuationImpl);
        }
        Object objD = authTokenRepositoryImpl$getSalesforceUserId$1.f47339b;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = authTokenRepositoryImpl$getSalesforceUserId$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objD);
                Result.Companion companion = Result.INSTANCE;
                authTokenRepositoryImpl$getSalesforceUserId$1.d = 1;
                objD = d(authTokenRepositoryImpl$getSalesforceUserId$1);
                if (objD == obj) {
                    return obj;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objD);
            }
            AuthToken authToken = (AuthToken) objD;
            if (authToken instanceof AuthToken.Atg) {
                str = ((AuthToken.Atg) authToken).f66588a;
            } else {
                if (!(authToken instanceof AuthToken.Twist.User)) {
                    if (!(authToken instanceof AuthToken.Twist.Guest) && !Intrinsics.c(authToken, AuthToken.None.f66591a)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    throw new SessionException.NoAccessTokenException();
                }
                str = ((AuthToken.Twist.User) authToken).f66594a;
            }
            failure = new Result(str);
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
