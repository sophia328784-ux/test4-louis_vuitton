package com.vuitton.android.domain.usecase.config;

import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;", "requireCachedConfigsVersionUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AreConfigsInCacheUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConfigsVersionUseCase f49655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f49656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49657c;

    @Inject
    public AreConfigsInCacheUseCase(RequireCachedConfigsVersionUseCase requireCachedConfigsVersionUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase) {
        requireCachedConfigsVersionUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        requireCachedConnectedObjectsConfigUseCase.getClass();
        this.f49655a = requireCachedConfigsVersionUseCase;
        this.f49656b = requireCachedAppConfigUseCase;
        this.f49657c = requireCachedConnectedObjectsConfigUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b2, code lost:
    
        if (r6 == r1) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            Method dump skipped, instruction units count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.config.AreConfigsInCacheUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
