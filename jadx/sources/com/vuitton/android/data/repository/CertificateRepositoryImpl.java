package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.CertificateApi;
import com.vuitton.android.data.api.bff.user.CertificateDetailUrlApi;
import com.vuitton.android.data.datasource.auth.TwistTokenDataSource;
import com.vuitton.android.data.dto.certificate.CertificateErrorDataDto;
import com.vuitton.android.data.dto.certificate.CertificateErrorDto;
import com.vuitton.android.data.dto.certificate.mapper.CertificateMapperKt;
import com.vuitton.android.data.net.cookiejar.WebkitCookieManagerProxy;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.CertificateRepository;
import defpackage.md;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.Json;
import okhttp3.ResponseBody;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0010B9\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/repository/CertificateRepositoryImpl;", "Lcom/vuitton/android/domain/repository/CertificateRepository;", "Lcom/vuitton/android/data/api/bff/user/CertificateApi;", "certificateApi", "Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;", "certificateDetailUrlApi", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;", "twistTokenDataSource", "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;", "cookieManagerProxy", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lcom/vuitton/android/data/api/bff/user/CertificateApi;Lcom/vuitton/android/data/api/bff/user/CertificateDetailUrlApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/data/datasource/auth/TwistTokenDataSource;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;Lkotlinx/serialization/json/Json;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CertificateRepositoryImpl implements CertificateRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CertificateApi f47579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CertificateDetailUrlApi f47580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AuthTokenRepository f47581c;
    public final TwistTokenDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WebkitCookieManagerProxy f47582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Json f47583f;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/CertificateRepositoryImpl$Companion;", "", "", "CERTIFICATE_HTTP_ERROR_CODE", "I", "", "CERTIFICATE_ERROR_CODE", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public CertificateRepositoryImpl(CertificateApi certificateApi, CertificateDetailUrlApi certificateDetailUrlApi, AuthTokenRepository authTokenRepository, TwistTokenDataSource twistTokenDataSource, WebkitCookieManagerProxy webkitCookieManagerProxy, Json json) {
        certificateApi.getClass();
        certificateDetailUrlApi.getClass();
        authTokenRepository.getClass();
        twistTokenDataSource.getClass();
        webkitCookieManagerProxy.getClass();
        json.getClass();
        this.f47579a = certificateApi;
        this.f47580b = certificateDetailUrlApi;
        this.f47581c = authTokenRepository;
        this.d = twistTokenDataSource;
        this.f47582e = webkitCookieManagerProxy;
        this.f47583f = json;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0061, code lost:
    
        if (r8 == r1) goto L24;
     */
    @Override // com.vuitton.android.domain.repository.CertificateRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.certificate.CertificateBffBody r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.vuitton.android.data.repository.CertificateRepositoryImpl$transferCertificate$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.android.data.repository.CertificateRepositoryImpl$transferCertificate$1 r0 = (com.vuitton.android.data.repository.CertificateRepositoryImpl$transferCertificate$1) r0
            int r1 = r0.f47596e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47596e = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.CertificateRepositoryImpl$transferCertificate$1 r0 = new com.vuitton.android.data.repository.CertificateRepositoryImpl$transferCertificate$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f47595c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47596e
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 == r5) goto L31
            if (r2 != r4) goto L2b
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L71
            goto L64
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r3
        L31:
            com.vuitton.foundation.model.domain.model.certificate.CertificateBffBody r7 = r0.f47594b
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.f71708b
            goto L4b
        L3b:
            kotlin.ResultKt.b(r8)
            r0.f47594b = r7
            r0.f47596e = r5
            com.vuitton.android.domain.repository.AuthTokenRepository r8 = r6.f47581c
            java.lang.Object r8 = r8.c(r0)
            if (r8 != r1) goto L4b
            goto L63
        L4b:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r8 instanceof kotlin.Result.Failure
            if (r2 != 0) goto L7a
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> L71
            com.vuitton.android.data.api.bff.user.CertificateApi r6 = r6.f47579a     // Catch: java.lang.Throwable -> L71
            com.vuitton.android.data.dto.certificate.CertificateBffBodyDto r7 = com.vuitton.android.data.dto.certificate.mapper.CertificateBodyMapperKt.a(r7)     // Catch: java.lang.Throwable -> L71
            r0.f47594b = r3     // Catch: java.lang.Throwable -> L71
            r0.f47596e = r4     // Catch: java.lang.Throwable -> L71
            java.lang.Object r8 = r6.transferCertificate(r8, r7, r0)     // Catch: java.lang.Throwable -> L71
            if (r8 != r1) goto L64
        L63:
            return r1
        L64:
            retrofit2.Response r8 = (retrofit2.Response) r8     // Catch: java.lang.Throwable -> L71
            okhttp3.Response r6 = r8.f79449a     // Catch: java.lang.Throwable -> L71
            boolean r6 = r6.r     // Catch: java.lang.Throwable -> L71
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r6)     // Catch: java.lang.Throwable -> L71
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L71
            return r6
        L71:
            r6 = move-exception
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r7 = new kotlin.Result$Failure
            r7.<init>(r6)
            return r7
        L7a:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CertificateRepositoryImpl.a(com.vuitton.foundation.model.domain.model.certificate.CertificateBffBody, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007b, code lost:
    
        if (r11 == r1) goto L32;
     */
    @Override // com.vuitton.android.domain.repository.CertificateRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.lang.String r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CertificateRepositoryImpl.b(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005d, code lost:
    
        if (r8 == r1) goto L24;
     */
    @Override // com.vuitton.android.domain.repository.CertificateRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(java.lang.String r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.vuitton.android.data.repository.CertificateRepositoryImpl$unlockCertificate$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.android.data.repository.CertificateRepositoryImpl$unlockCertificate$1 r0 = (com.vuitton.android.data.repository.CertificateRepositoryImpl$unlockCertificate$1) r0
            int r1 = r0.f47599e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47599e = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.CertificateRepositoryImpl$unlockCertificate$1 r0 = new com.vuitton.android.data.repository.CertificateRepositoryImpl$unlockCertificate$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f47598c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47599e
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 == r5) goto L31
            if (r2 != r4) goto L2b
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L69
            goto L60
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r3
        L31:
            java.lang.String r7 = r0.f47597b
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.f71708b
            goto L4b
        L3b:
            kotlin.ResultKt.b(r8)
            r0.f47597b = r7
            r0.f47599e = r5
            com.vuitton.android.domain.repository.AuthTokenRepository r8 = r6.f47581c
            java.lang.Object r8 = r8.c(r0)
            if (r8 != r1) goto L4b
            goto L5f
        L4b:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r8 instanceof kotlin.Result.Failure
            if (r2 != 0) goto L72
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> L69
            com.vuitton.android.data.api.bff.user.CertificateApi r6 = r6.f47579a     // Catch: java.lang.Throwable -> L69
            r0.f47597b = r3     // Catch: java.lang.Throwable -> L69
            r0.f47599e = r4     // Catch: java.lang.Throwable -> L69
            java.lang.Object r8 = r6.unlockCertificate(r7, r8, r0)     // Catch: java.lang.Throwable -> L69
            if (r8 != r1) goto L60
        L5f:
            return r1
        L60:
            retrofit2.Response r8 = (retrofit2.Response) r8     // Catch: java.lang.Throwable -> L69
            okhttp3.Response r6 = r8.f79449a     // Catch: java.lang.Throwable -> L69
            kotlin.Unit r6 = kotlin.Unit.f71739a     // Catch: java.lang.Throwable -> L69
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L69
            return r6
        L69:
            r6 = move-exception
            kotlin.Result$Companion r7 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r7 = new kotlin.Result$Failure
            r7.<init>(r6)
            return r7
        L72:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CertificateRepositoryImpl.c(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CertificateRepository
    public final Object d(ContinuationImpl continuationImpl) throws Throwable {
        CertificateRepositoryImpl$getCertificateList$1 certificateRepositoryImpl$getCertificateList$1;
        Object failure;
        Object objB;
        Object failure2;
        CertificateErrorDataDto certificateErrorDataDto;
        ResponseBody responseBody;
        if (continuationImpl instanceof CertificateRepositoryImpl$getCertificateList$1) {
            certificateRepositoryImpl$getCertificateList$1 = (CertificateRepositoryImpl$getCertificateList$1) continuationImpl;
            int i2 = certificateRepositoryImpl$getCertificateList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                certificateRepositoryImpl$getCertificateList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                certificateRepositoryImpl$getCertificateList$1 = new CertificateRepositoryImpl$getCertificateList$1(this, continuationImpl);
            }
        } else {
            certificateRepositoryImpl$getCertificateList$1 = new CertificateRepositoryImpl$getCertificateList$1(this, continuationImpl);
        }
        Object certificateList = certificateRepositoryImpl$getCertificateList$1.f47592b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = certificateRepositoryImpl$getCertificateList$1.d;
        String str = null;
        try {
            if (i3 == 0) {
                ResultKt.b(certificateList);
                Result.Companion companion = Result.INSTANCE;
                CertificateApi certificateApi = this.f47579a;
                certificateRepositoryImpl$getCertificateList$1.d = 1;
                certificateList = certificateApi.getCertificateList(certificateRepositoryImpl$getCertificateList$1);
                if (certificateList == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(certificateList);
            }
            failure = new Result(CertificateMapperKt.b((List) certificateList));
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
        if (thA2 == null) {
            return obj;
        }
        try {
            if (!(thA2 instanceof HttpException)) {
                throw thA2;
            }
            int i4 = ((HttpException) thA2).f79346b;
            Response response = ((HttpException) thA2).d;
            String strString = (response == null || (responseBody = response.f79451c) == null) ? null : responseBody.string();
            Json json = this.f47583f;
            if (strString != null) {
                try {
                    if (StringsKt.w(strString)) {
                        objB = null;
                    } else {
                        json.getClass();
                        objB = json.b(CertificateErrorDto.INSTANCE.serializer(), strString);
                    }
                    failure2 = new Result(objB);
                } catch (Throwable th2) {
                    Result.Companion companion3 = Result.INSTANCE;
                    failure2 = new Result.Failure(th2);
                }
            } else {
                objB = null;
                failure2 = new Result(objB);
            }
            Throwable thA3 = Result.a(failure2);
            if (thA3 != null) {
                if (thA3 instanceof CancellationException) {
                    throw thA3;
                }
                failure2 = new Result(new Result.Failure(thA3));
            }
            Object obj2 = ((Result) failure2).f71708b;
            if (obj2 instanceof Result.Failure) {
                obj2 = null;
            }
            CertificateErrorDto certificateErrorDto = (CertificateErrorDto) obj2;
            if (certificateErrorDto != null && (certificateErrorDataDto = certificateErrorDto.f45190b) != null) {
                str = certificateErrorDataDto.f45185a;
            }
            if (Intrinsics.c(str, "PAPI-C007") && i4 == 422) {
                return EmptyList.f71768b;
            }
            throw thA2;
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            return new Result.Failure(th3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006b, code lost:
    
        if (r9 == r1) goto L24;
     */
    @Override // com.vuitton.android.domain.repository.CertificateRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(com.vuitton.foundation.model.domain.model.certificate.AddCertificateBody r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.vuitton.android.data.repository.CertificateRepositoryImpl$addCertificate$1
            if (r0 == 0) goto L13
            r0 = r9
            com.vuitton.android.data.repository.CertificateRepositoryImpl$addCertificate$1 r0 = (com.vuitton.android.data.repository.CertificateRepositoryImpl$addCertificate$1) r0
            int r1 = r0.f47586e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47586e = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.CertificateRepositoryImpl$addCertificate$1 r0 = new com.vuitton.android.data.repository.CertificateRepositoryImpl$addCertificate$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.f47585c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47586e
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 == r5) goto L31
            if (r2 != r4) goto L2b
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L7b
            goto L6e
        L2b:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r3
        L31:
            com.vuitton.foundation.model.domain.model.certificate.AddCertificateBody r8 = r0.f47584b
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
            goto L4b
        L3b:
            kotlin.ResultKt.b(r9)
            r0.f47584b = r8
            r0.f47586e = r5
            com.vuitton.android.domain.repository.AuthTokenRepository r9 = r7.f47581c
            java.lang.Object r9 = r9.c(r0)
            if (r9 != r1) goto L4b
            goto L6d
        L4b:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r9 instanceof kotlin.Result.Failure
            if (r2 != 0) goto L84
            java.lang.String r9 = (java.lang.String) r9     // Catch: java.lang.Throwable -> L7b
            com.vuitton.android.data.api.bff.user.CertificateApi r7 = r7.f47579a     // Catch: java.lang.Throwable -> L7b
            r8.getClass()     // Catch: java.lang.Throwable -> L7b
            com.vuitton.android.data.dto.certificate.AddCertificateBodyDto r2 = new com.vuitton.android.data.dto.certificate.AddCertificateBodyDto     // Catch: java.lang.Throwable -> L7b
            java.lang.String r5 = r8.f67043a     // Catch: java.lang.Throwable -> L7b
            java.lang.String r6 = r8.f67044b     // Catch: java.lang.Throwable -> L7b
            java.lang.String r8 = r8.f67045c     // Catch: java.lang.Throwable -> L7b
            r2.<init>(r5, r6, r8)     // Catch: java.lang.Throwable -> L7b
            r0.f47584b = r3     // Catch: java.lang.Throwable -> L7b
            r0.f47586e = r4     // Catch: java.lang.Throwable -> L7b
            java.lang.Object r9 = r7.addCertificate(r9, r2, r0)     // Catch: java.lang.Throwable -> L7b
            if (r9 != r1) goto L6e
        L6d:
            return r1
        L6e:
            retrofit2.Response r9 = (retrofit2.Response) r9     // Catch: java.lang.Throwable -> L7b
            okhttp3.Response r7 = r9.f79449a     // Catch: java.lang.Throwable -> L7b
            boolean r7 = r7.r     // Catch: java.lang.Throwable -> L7b
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch: java.lang.Throwable -> L7b
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L7b
            return r7
        L7b:
            r7 = move-exception
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r8 = new kotlin.Result$Failure
            r8.<init>(r7)
            return r8
        L84:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CertificateRepositoryImpl.e(com.vuitton.foundation.model.domain.model.certificate.AddCertificateBody, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
