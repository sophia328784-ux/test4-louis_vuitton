package com.vuitton.android.domain.usecase.certificate;

import com.vuitton.android.domain.repository.AccountRepository;
import com.vuitton.foundation.model.domain.model.certificate.CertificateChinaConsentBody;
import defpackage.d21;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase;", "", "Lcom/vuitton/android/domain/repository/AccountRepository;", "accountRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AccountRepository;)V", "Param", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddCertificateChinaConsentUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AccountRepository f49618a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase$Param;", "", "", "userAtgId", "phone", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Param {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f49619a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f49620b;

        public Param(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f49619a = str;
            this.f49620b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Param)) {
                return false;
            }
            Param param = (Param) obj;
            return Intrinsics.c(this.f49619a, param.f49619a) && Intrinsics.c(this.f49620b, param.f49620b);
        }

        public final int hashCode() {
            return this.f49620b.hashCode() + (this.f49619a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("Param(userAtgId=", this.f49619a, ", phone=", this.f49620b, ")");
        }
    }

    @Inject
    public AddCertificateChinaConsentUseCase(AccountRepository accountRepository) {
        accountRepository.getClass();
        this.f49618a = accountRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Param param, ContinuationImpl continuationImpl) {
        AddCertificateChinaConsentUseCase$run$1 addCertificateChinaConsentUseCase$run$1;
        if (continuationImpl instanceof AddCertificateChinaConsentUseCase$run$1) {
            addCertificateChinaConsentUseCase$run$1 = (AddCertificateChinaConsentUseCase$run$1) continuationImpl;
            int i2 = addCertificateChinaConsentUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addCertificateChinaConsentUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addCertificateChinaConsentUseCase$run$1 = new AddCertificateChinaConsentUseCase$run$1(this, continuationImpl);
            }
        } else {
            addCertificateChinaConsentUseCase$run$1 = new AddCertificateChinaConsentUseCase$run$1(this, continuationImpl);
        }
        Object obj = addCertificateChinaConsentUseCase$run$1.f49621b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addCertificateChinaConsentUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        CertificateChinaConsentBody certificateChinaConsentBody = new CertificateChinaConsentBody(param.f49619a, param.f49620b);
        addCertificateChinaConsentUseCase$run$1.d = 1;
        Object objG = this.f49618a.g(certificateChinaConsentBody, addCertificateChinaConsentUseCase$run$1);
        return objG == coroutineSingletons ? coroutineSingletons : objG;
    }
}
