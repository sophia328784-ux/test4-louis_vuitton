package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.legacymulesoft.CareServicesApi;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.CareServicesRepository;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import defpackage.d21;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl;", "Lcom/vuitton/android/domain/repository/CareServicesRepository;", "Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;", "careServicesApi", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "<init>", "(Lcom/vuitton/android/data/api/legacymulesoft/CareServicesApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CareServicesRepositoryImpl implements CareServicesRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CareServicesApi f47449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthTokenRepository f47450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EnvironmentProvider f47451c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/CareServicesRepositoryImpl$Companion;", "", "", "HTTP_CODE_204", "I", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public CareServicesRepositoryImpl(CareServicesApi careServicesApi, AuthTokenRepository authTokenRepository, EnvironmentProvider environmentProvider) {
        careServicesApi.getClass();
        authTokenRepository.getClass();
        environmentProvider.getClass();
        this.f47449a = careServicesApi;
        this.f47450b = authTokenRepository;
        this.f47451c = environmentProvider;
    }

    public static String e(AppConfig appConfig) {
        return d21.j(appConfig.Q.f67245e, "care-services");
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00cf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0093, code lost:
    
        if (r12 == r1) goto L28;
     */
    @Override // com.vuitton.android.domain.repository.CareServicesRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.config.AppConfig r10, java.lang.String r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CareServicesRepositoryImpl.a(com.vuitton.foundation.model.domain.model.config.AppConfig, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00ce A[Catch: all -> 0x00de, TRY_LEAVE, TryCatch #0 {all -> 0x00de, blocks: (B:43:0x00b3, B:44:0x00c8, B:46:0x00ce), top: B:52:0x00b3 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00e8 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:52:0x00b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0077, code lost:
    
        if (r11 == r1) goto L28;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v5, types: [kotlin.Result$Failure] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.Object] */
    @Override // com.vuitton.android.domain.repository.CareServicesRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(com.vuitton.foundation.model.domain.model.config.AppConfig r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CareServicesRepositoryImpl.b(com.vuitton.foundation.model.domain.model.config.AppConfig, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00e5 A[Catch: all -> 0x00f0, TryCatch #0 {all -> 0x00f0, blocks: (B:43:0x00db, B:45:0x00e5, B:46:0x00e8, B:47:0x00ef), top: B:51:0x00db }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e8 A[Catch: all -> 0x00f0, TryCatch #0 {all -> 0x00f0, blocks: (B:43:0x00db, B:45:0x00e5, B:46:0x00e8, B:47:0x00ef), top: B:51:0x00db }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00db A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009f, code lost:
    
        if (r14 == r1) goto L28;
     */
    @Override // com.vuitton.android.domain.repository.CareServicesRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(com.vuitton.foundation.model.domain.model.config.AppConfig r11, java.lang.String r12, com.vuitton.foundation.model.domain.model.careservices.CareServiceUpdate r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CareServicesRepositoryImpl.c(com.vuitton.foundation.model.domain.model.config.AppConfig, java.lang.String, com.vuitton.foundation.model.domain.model.careservices.CareServiceUpdate, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00c9 A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:43:0x00bd, B:45:0x00c9, B:47:0x00cd, B:49:0x00d4, B:51:0x00db, B:53:0x00e1, B:55:0x00e8, B:56:0x00ef, B:57:0x00f0, B:58:0x00f7, B:59:0x00f8, B:60:0x00ff), top: B:64:0x00bd }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00cd A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:43:0x00bd, B:45:0x00c9, B:47:0x00cd, B:49:0x00d4, B:51:0x00db, B:53:0x00e1, B:55:0x00e8, B:56:0x00ef, B:57:0x00f0, B:58:0x00f7, B:59:0x00f8, B:60:0x00ff), top: B:64:0x00bd }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00d4 A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:43:0x00bd, B:45:0x00c9, B:47:0x00cd, B:49:0x00d4, B:51:0x00db, B:53:0x00e1, B:55:0x00e8, B:56:0x00ef, B:57:0x00f0, B:58:0x00f7, B:59:0x00f8, B:60:0x00ff), top: B:64:0x00bd }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00f0 A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:43:0x00bd, B:45:0x00c9, B:47:0x00cd, B:49:0x00d4, B:51:0x00db, B:53:0x00e1, B:55:0x00e8, B:56:0x00ef, B:57:0x00f0, B:58:0x00f7, B:59:0x00f8, B:60:0x00ff), top: B:64:0x00bd }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00f8 A[Catch: all -> 0x0100, TryCatch #0 {all -> 0x0100, blocks: (B:43:0x00bd, B:45:0x00c9, B:47:0x00cd, B:49:0x00d4, B:51:0x00db, B:53:0x00e1, B:55:0x00e8, B:56:0x00ef, B:57:0x00f0, B:58:0x00f7, B:59:0x00f8, B:60:0x00ff), top: B:64:0x00bd }] */
    /* JADX WARN: Code duplicated, block: B:63:0x010a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
    
        if (r13 == r1) goto L28;
     */
    @Override // com.vuitton.android.domain.repository.CareServicesRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(com.vuitton.foundation.model.domain.model.config.AppConfig r11, com.vuitton.foundation.model.domain.model.careservices.CreateCareServiceParam r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.CareServicesRepositoryImpl.d(com.vuitton.foundation.model.domain.model.config.AppConfig, com.vuitton.foundation.model.domain.model.careservices.CreateCareServiceParam, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
