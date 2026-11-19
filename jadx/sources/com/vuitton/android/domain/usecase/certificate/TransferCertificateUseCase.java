package com.vuitton.android.domain.usecase.certificate;

import com.vuitton.android.domain.repository.CertificateRepository;
import com.vuitton.foundation.model.domain.model.certificate.Certificate;
import com.vuitton.foundation.model.domain.model.certificate.CertificateBffBody;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase;", "", "Lcom/vuitton/android/domain/repository/CertificateRepository;", "certificateRepository", "<init>", "(Lcom/vuitton/android/domain/repository/CertificateRepository;)V", "Param", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TransferCertificateUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CertificateRepository f49635a;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;", "", "Lcom/vuitton/foundation/model/domain/model/certificate/Certificate;", "certificate", "", "email", "phone", "keyword", "date", "<init>", "(Lcom/vuitton/foundation/model/domain/model/certificate/Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Param {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Certificate f49636a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f49637b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f49638c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f49639e;

        public Param(Certificate certificate, String str, String str2, String str3, String str4) {
            d21.y(str, str2, str3, str4);
            this.f49636a = certificate;
            this.f49637b = str;
            this.f49638c = str2;
            this.d = str3;
            this.f49639e = str4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Param)) {
                return false;
            }
            Param param = (Param) obj;
            return Intrinsics.c(this.f49636a, param.f49636a) && Intrinsics.c(this.f49637b, param.f49637b) && Intrinsics.c(this.f49638c, param.f49638c) && Intrinsics.c(this.d, param.d) && Intrinsics.c(this.f49639e, param.f49639e);
        }

        public final int hashCode() {
            Certificate certificate = this.f49636a;
            return this.f49639e.hashCode() + fc.b(fc.b(fc.b((certificate == null ? 0 : certificate.hashCode()) * 31, 31, this.f49637b), 31, this.f49638c), 31, this.d);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Param(certificate=");
            sb.append(this.f49636a);
            sb.append(", email=");
            sb.append(this.f49637b);
            sb.append(", phone=");
            cj.C(sb, this.f49638c, ", keyword=", this.d, ", date=");
            return n00.r(this.f49639e, ")", sb);
        }
    }

    @Inject
    public TransferCertificateUseCase(CertificateRepository certificateRepository) {
        certificateRepository.getClass();
        this.f49635a = certificateRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Param param, ContinuationImpl continuationImpl) {
        TransferCertificateUseCase$run$1 transferCertificateUseCase$run$1;
        if (continuationImpl instanceof TransferCertificateUseCase$run$1) {
            transferCertificateUseCase$run$1 = (TransferCertificateUseCase$run$1) continuationImpl;
            int i2 = transferCertificateUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                transferCertificateUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                transferCertificateUseCase$run$1 = new TransferCertificateUseCase$run$1(this, continuationImpl);
            }
        } else {
            transferCertificateUseCase$run$1 = new TransferCertificateUseCase$run$1(this, continuationImpl);
        }
        Object obj = transferCertificateUseCase$run$1.f49640b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = transferCertificateUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        Certificate certificate = param.f49636a;
        if (certificate == null) {
            Result.Companion companion = Result.INSTANCE;
            return new Result.Failure(new IllegalStateException("Certificate to transfer should not be null"));
        }
        CertificateBffBody certificateBffBody = new CertificateBffBody(certificate, param.f49639e, param.d, param.f49637b, param.f49638c);
        transferCertificateUseCase$run$1.d = 1;
        Object objA = this.f49635a.a(certificateBffBody, transferCertificateUseCase$run$1);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}
