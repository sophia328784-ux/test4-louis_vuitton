package com.vuitton.android.domain.usecase.config;

import com.vuitton.android.domain.repository.AppConfigRepository;
import com.vuitton.android.domain.repository.ConfigsVersionRepository;
import com.vuitton.android.domain.repository.ConnectedObjectsConfigRepository;
import com.vuitton.foundation.logger.Logger;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\fB)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/repository/AppConfigRepository;", "appConfigRepository", "Lcom/vuitton/android/domain/repository/ConfigsVersionRepository;", "configsVersionRepository", "Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;", "connectedObjectsConfigRepository", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/ConfigsVersionRepository;Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ClearAllConfigUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f49661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppConfigRepository f49662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConfigsVersionRepository f49663c;
    public final ConnectedObjectsConfigRepository d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase$Companion;", "", "", "TAG", "Ljava/lang/String;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public ClearAllConfigUseCase(Logger logger, AppConfigRepository appConfigRepository, ConfigsVersionRepository configsVersionRepository, ConnectedObjectsConfigRepository connectedObjectsConfigRepository) {
        logger.getClass();
        appConfigRepository.getClass();
        configsVersionRepository.getClass();
        connectedObjectsConfigRepository.getClass();
        this.f49661a = logger;
        this.f49662b = appConfigRepository;
        this.f49663c = configsVersionRepository;
        this.d = connectedObjectsConfigRepository;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0081  */
    /* JADX WARN: Code duplicated, block: B:35:0x008d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0098, code lost:
    
        if (r7 == r1) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.vuitton.android.domain.usecase.config.ClearAllConfigUseCase$run$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.android.domain.usecase.config.ClearAllConfigUseCase$run$1 r0 = (com.vuitton.android.domain.usecase.config.ClearAllConfigUseCase$run$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.config.ClearAllConfigUseCase$run$1 r0 = new com.vuitton.android.domain.usecase.config.ClearAllConfigUseCase$run$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.f49664b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 3
            r4 = 2
            r5 = 1
            com.vuitton.foundation.logger.Logger r6 = r7.f49661a
            if (r2 == 0) goto L4a
            if (r2 == r5) goto L42
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L33
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r7 = r8.f71708b
            goto L9b
        L33:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L3a:
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.f71708b
            goto L7b
        L42:
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.f71708b
            goto L5b
        L4a:
            kotlin.ResultKt.b(r8)
            r6.getClass()
            r0.d = r5
            com.vuitton.android.domain.repository.ConfigsVersionRepository r8 = r7.f49663c
            java.lang.Object r8 = r8.c(r0)
            if (r8 != r1) goto L5b
            goto L9a
        L5b:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r8 instanceof kotlin.Result.Failure
            if (r2 != 0) goto L67
            r2 = r8
            kotlin.Unit r2 = (kotlin.Unit) r2
            r6.getClass()
        L67:
            java.lang.Throwable r8 = kotlin.Result.a(r8)
            if (r8 == 0) goto L70
            r6.getClass()
        L70:
            r0.d = r4
            com.vuitton.android.domain.repository.AppConfigRepository r8 = r7.f49662b
            java.lang.Object r8 = r8.b(r0)
            if (r8 != r1) goto L7b
            goto L9a
        L7b:
            kotlin.Result$Companion r2 = kotlin.Result.INSTANCE
            boolean r2 = r8 instanceof kotlin.Result.Failure
            if (r2 != 0) goto L87
            r2 = r8
            kotlin.Unit r2 = (kotlin.Unit) r2
            r6.getClass()
        L87:
            java.lang.Throwable r8 = kotlin.Result.a(r8)
            if (r8 == 0) goto L90
            r6.getClass()
        L90:
            r0.d = r3
            com.vuitton.android.domain.repository.ConnectedObjectsConfigRepository r7 = r7.d
            java.lang.Object r7 = r7.c(r0)
            if (r7 != r1) goto L9b
        L9a:
            return r1
        L9b:
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            boolean r8 = r7 instanceof kotlin.Result.Failure
            if (r8 != 0) goto La7
            r8 = r7
            kotlin.Unit r8 = (kotlin.Unit) r8
            r6.getClass()
        La7:
            java.lang.Throwable r7 = kotlin.Result.a(r7)
            if (r7 == 0) goto Lb0
            r6.getClass()
        Lb0:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.config.ClearAllConfigUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
