package com.vuitton.android.domain.usecase.authentication.oauth;

import com.vuitton.android.domain.repository.TwistAuthRepository;
import com.vuitton.foundation.model.domain.model.authentication.oauth.NativeLogin;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase;", "", "Lcom/vuitton/android/domain/repository/TwistAuthRepository;", "twistAuthRepository", "<init>", "(Lcom/vuitton/android/domain/repository/TwistAuthRepository;)V", "Param", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NativeLoginUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TwistAuthRepository f49391a;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase$Param;", "", "", "locale", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLogin;", "nativeLogin", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLogin;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Param {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f49392a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final NativeLogin f49393b;

        public Param(String str, NativeLogin nativeLogin) {
            str.getClass();
            nativeLogin.getClass();
            this.f49392a = str;
            this.f49393b = nativeLogin;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Param)) {
                return false;
            }
            Param param = (Param) obj;
            return Intrinsics.c(this.f49392a, param.f49392a) && Intrinsics.c(this.f49393b, param.f49393b);
        }

        public final int hashCode() {
            return this.f49393b.hashCode() + (this.f49392a.hashCode() * 31);
        }

        public final String toString() {
            return "Param(locale=" + this.f49392a + ", nativeLogin=" + this.f49393b + ")";
        }
    }

    @Inject
    public NativeLoginUseCase(TwistAuthRepository twistAuthRepository) {
        twistAuthRepository.getClass();
        this.f49391a = twistAuthRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Param param, ContinuationImpl continuationImpl) {
        NativeLoginUseCase$run$1 nativeLoginUseCase$run$1;
        if (continuationImpl instanceof NativeLoginUseCase$run$1) {
            nativeLoginUseCase$run$1 = (NativeLoginUseCase$run$1) continuationImpl;
            int i2 = nativeLoginUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nativeLoginUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                nativeLoginUseCase$run$1 = new NativeLoginUseCase$run$1(this, continuationImpl);
            }
        } else {
            nativeLoginUseCase$run$1 = new NativeLoginUseCase$run$1(this, continuationImpl);
        }
        Object obj = nativeLoginUseCase$run$1.f49394b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nativeLoginUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        String str = param.f49392a;
        NativeLogin nativeLogin = param.f49393b;
        nativeLoginUseCase$run$1.d = 1;
        Object objE = this.f49391a.e(nativeLogin, nativeLoginUseCase$run$1);
        return objE == coroutineSingletons ? coroutineSingletons : objE;
    }
}
