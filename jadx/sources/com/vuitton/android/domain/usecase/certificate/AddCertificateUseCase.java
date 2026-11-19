package com.vuitton.android.domain.usecase.certificate;

import com.vuitton.android.domain.repository.CertificateRepository;
import com.vuitton.foundation.model.domain.model.certificate.AddCertificateBody;
import defpackage.cj;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import java.io.Serializable;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;", "", "Lcom/vuitton/android/domain/repository/CertificateRepository;", "certificateRepository", "<init>", "(Lcom/vuitton/android/domain/repository/CertificateRepository;)V", "Param", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddCertificateUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CertificateRepository f49623a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$Param;", "", "", "identifier", "date", "keyword", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Param {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f49624a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f49625b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f49626c;

        public Param(String str, String str2, String str3) {
            cj.z(str, str2, str3);
            this.f49624a = str;
            this.f49625b = str2;
            this.f49626c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Param)) {
                return false;
            }
            Param param = (Param) obj;
            return Intrinsics.c(this.f49624a, param.f49624a) && Intrinsics.c(this.f49625b, param.f49625b) && Intrinsics.c(this.f49626c, param.f49626c);
        }

        public final int hashCode() {
            return this.f49626c.hashCode() + fc.b(this.f49624a.hashCode() * 31, 31, this.f49625b);
        }

        public final String toString() {
            return n00.r(this.f49626c, ")", fc.s("Param(identifier=", this.f49624a, ", date=", this.f49625b, ", keyword="));
        }
    }

    @Inject
    public AddCertificateUseCase(CertificateRepository certificateRepository) {
        certificateRepository.getClass();
        this.f49623a = certificateRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Serializable a(Param param, ContinuationImpl continuationImpl) {
        AddCertificateUseCase$run$1 addCertificateUseCase$run$1;
        Object objE;
        if (continuationImpl instanceof AddCertificateUseCase$run$1) {
            addCertificateUseCase$run$1 = (AddCertificateUseCase$run$1) continuationImpl;
            int i2 = addCertificateUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addCertificateUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addCertificateUseCase$run$1 = new AddCertificateUseCase$run$1(this, continuationImpl);
            }
        } else {
            addCertificateUseCase$run$1 = new AddCertificateUseCase$run$1(this, continuationImpl);
        }
        Object obj = addCertificateUseCase$run$1.f49627b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addCertificateUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            AddCertificateBody addCertificateBody = new AddCertificateBody(param.f49625b, param.f49626c, param.f49624a);
            addCertificateUseCase$run$1.d = 1;
            objE = this.f49623a.e(addCertificateBody, addCertificateUseCase$run$1);
            if (objE == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objE = ((Result) obj).f71708b;
        }
        Throwable thA = Result.a(objE);
        if (thA == null) {
            return ((Boolean) objE).booleanValue() ? Boolean.TRUE : new Result.Failure(new Exception("Failed to add certificate"));
        }
        return new Result.Failure(thA);
    }
}
