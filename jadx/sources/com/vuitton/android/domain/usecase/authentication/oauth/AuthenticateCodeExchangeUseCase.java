package com.vuitton.android.domain.usecase.authentication.oauth;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.TwistAuthRepository;
import defpackage.n00;
import java.util.UUID;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;", "", "Lcom/vuitton/android/domain/repository/TwistAuthRepository;", "twistAuthRepository", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "<init>", "(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V", "Param", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AuthenticateCodeExchangeUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TwistAuthRepository f49348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthTokenRepository f49349b;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase$Param;", "", "", "codeVerifier", "Ljava/util/UUID;", "state", m.v, "<init>", "(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Param {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f49350a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final UUID f49351b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f49352c;

        public Param(String str, UUID uuid, String str2) {
            str.getClass();
            uuid.getClass();
            str2.getClass();
            this.f49350a = str;
            this.f49351b = uuid;
            this.f49352c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Param)) {
                return false;
            }
            Param param = (Param) obj;
            return Intrinsics.c(this.f49350a, param.f49350a) && Intrinsics.c(this.f49351b, param.f49351b) && Intrinsics.c(this.f49352c, param.f49352c);
        }

        public final int hashCode() {
            return this.f49352c.hashCode() + ((this.f49351b.hashCode() + (this.f49350a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Param(codeVerifier=");
            sb.append(this.f49350a);
            sb.append(", state=");
            sb.append(this.f49351b);
            sb.append(", code=");
            return n00.r(this.f49352c, ")", sb);
        }
    }

    @Inject
    public AuthenticateCodeExchangeUseCase(TwistAuthRepository twistAuthRepository, AuthTokenRepository authTokenRepository) {
        twistAuthRepository.getClass();
        authTokenRepository.getClass();
        this.f49348a = twistAuthRepository;
        this.f49349b = authTokenRepository;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0087 A[Catch: all -> 0x009c, TRY_ENTER, TryCatch #0 {all -> 0x009c, blocks: (B:13:0x002c, B:38:0x0094, B:35:0x0087), top: B:44:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00a5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0091, code lost:
    
        if (r8 == r1) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase.Param r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r10
            com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase$run$1) r0
            int r1 = r0.f49355e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f49355e = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase$run$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.f49354c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f49355e
            com.vuitton.android.domain.repository.TwistAuthRepository r3 = r8.f49348a
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L48
            if (r2 == r6) goto L42
            if (r2 == r5) goto L3a
            if (r2 != r4) goto L34
            kotlin.ResultKt.b(r10)     // Catch: java.lang.Throwable -> L9c
            kotlin.Result r10 = (kotlin.Result) r10     // Catch: java.lang.Throwable -> L9c
            java.lang.Object r8 = r10.f71708b     // Catch: java.lang.Throwable -> L9c
            goto L94
        L34:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r7
        L3a:
            kotlin.ResultKt.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r8 = r10.f71708b
            goto L81
        L42:
            com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase$Param r9 = r0.f49353b
            kotlin.ResultKt.b(r10)
            goto L58
        L48:
            kotlin.ResultKt.b(r10)
            r0.f49353b = r9
            r0.f49355e = r6
            com.vuitton.android.domain.repository.AuthTokenRepository r8 = r8.f49349b
            java.lang.Object r10 = r8.d(r0)
            if (r10 != r1) goto L58
            goto L93
        L58:
            r8 = r10
            com.vuitton.foundation.model.domain.model.authentication.AuthToken r8 = (com.vuitton.foundation.model.domain.model.authentication.AuthToken) r8
            boolean r8 = r8 instanceof com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist.Guest
            if (r8 == 0) goto L60
            goto L61
        L60:
            r10 = r7
        L61:
            com.vuitton.foundation.model.domain.model.authentication.AuthToken r10 = (com.vuitton.foundation.model.domain.model.authentication.AuthToken) r10
            if (r10 == 0) goto L6a
            com.vuitton.foundation.model.domain.model.authentication.AuthToken$Twist$Guest r10 = (com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist.Guest) r10
            java.lang.String r8 = r10.f66592a
            goto L6b
        L6a:
            r8 = r7
        L6b:
            com.vuitton.foundation.model.domain.model.authentication.oauth.ClientCode r10 = new com.vuitton.foundation.model.domain.model.authentication.oauth.ClientCode
            java.lang.String r2 = r9.f49352c
            java.lang.String r6 = r9.f49350a
            java.util.UUID r9 = r9.f49351b
            r10.<init>(r2, r6, r9, r8)
            r0.f49353b = r7
            r0.f49355e = r5
            java.lang.Object r8 = r3.g(r10, r0)
            if (r8 != r1) goto L81
            goto L93
        L81:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            boolean r9 = r8 instanceof kotlin.Result.Failure
            if (r9 != 0) goto La5
            com.vuitton.foundation.model.domain.model.authentication.AuthToken$Twist$User r8 = (com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist.User) r8     // Catch: java.lang.Throwable -> L9c
            r0.f49353b = r7     // Catch: java.lang.Throwable -> L9c
            r0.f49355e = r4     // Catch: java.lang.Throwable -> L9c
            java.lang.Object r8 = r3.b(r8, r0)     // Catch: java.lang.Throwable -> L9c
            if (r8 != r1) goto L94
        L93:
            return r1
        L94:
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L9c
            kotlin.Unit r8 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L9c
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L9c
            return r8
        L9c:
            r8 = move-exception
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
            return r9
        La5:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase.a(com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase$Param, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
