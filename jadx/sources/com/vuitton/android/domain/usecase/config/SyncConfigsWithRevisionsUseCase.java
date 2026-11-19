package com.vuitton.android.domain.usecase.config;

import com.vuitton.android.domain.repository.AppConfigRepository;
import com.vuitton.android.domain.repository.ConnectedObjectsConfigRepository;
import com.vuitton.android.domain.usecase.app.InitializeAppUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion;
import defpackage.md;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\u0014\u0015BI\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;", "initializeAppUseCase", "Lcom/vuitton/android/domain/repository/AppConfigRepository;", "appConfigRepository", "Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;", "connectedObjectsConfigRepository", "Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;", "areConfigsInCacheUseCase", "Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;", "clearAllConfigUseCase", "Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;", "areCachedConfigsUpToDateUseCase", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;)V", "Companion", "SyncResult", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SyncConfigsWithRevisionsUseCase {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f49717i = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f49718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f49719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InitializeAppUseCase f49720c;
    public final AppConfigRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ConnectedObjectsConfigRepository f49721e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AreConfigsInCacheUseCase f49722f;
    public final ClearAllConfigUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AreCachedConfigsUpToDateUseCase f49723h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$Companion;", "", "", "TAG", "Ljava/lang/String;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult;", "", "Success", "Failure", "Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure;", "Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Success;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface SyncResult {

        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure;", "Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult;", "DeprecatedConfigs", "NoConfigs", "Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure$DeprecatedConfigs;", "Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure$NoConfigs;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public interface Failure extends SyncResult {

            @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure$DeprecatedConfigs;", "Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class DeprecatedConfigs implements Failure {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public static final DeprecatedConfigs f49724a = new DeprecatedConfigs();

                public final boolean equals(Object obj) {
                    return this == obj || (obj instanceof DeprecatedConfigs);
                }

                public final int hashCode() {
                    return -265997869;
                }

                public final String toString() {
                    return "DeprecatedConfigs";
                }
            }

            @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure$NoConfigs;", "Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "<init>", "(Ljava/lang/Exception;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
            public static final /* data */ class NoConfigs implements Failure {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final Exception f49725a;

                public NoConfigs(Exception exc) {
                    exc.getClass();
                    this.f49725a = exc;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof NoConfigs) && Intrinsics.c(this.f49725a, ((NoConfigs) obj).f49725a);
                }

                public final int hashCode() {
                    return this.f49725a.hashCode();
                }

                public final String toString() {
                    return "NoConfigs(e=" + this.f49725a + ")";
                }
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Success;", "Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Success implements SyncResult {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final Success f49726a = new Success();

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof Success);
            }

            public final int hashCode() {
                return 1886476636;
            }

            public final String toString() {
                return "Success";
            }
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public SyncConfigsWithRevisionsUseCase(Logger logger, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, InitializeAppUseCase initializeAppUseCase, AppConfigRepository appConfigRepository, ConnectedObjectsConfigRepository connectedObjectsConfigRepository, AreConfigsInCacheUseCase areConfigsInCacheUseCase, ClearAllConfigUseCase clearAllConfigUseCase, AreCachedConfigsUpToDateUseCase areCachedConfigsUpToDateUseCase) {
        logger.getClass();
        requireUserInAppDispatchUseCase.getClass();
        initializeAppUseCase.getClass();
        appConfigRepository.getClass();
        connectedObjectsConfigRepository.getClass();
        areConfigsInCacheUseCase.getClass();
        clearAllConfigUseCase.getClass();
        areCachedConfigsUpToDateUseCase.getClass();
        this.f49718a = logger;
        this.f49719b = requireUserInAppDispatchUseCase;
        this.f49720c = initializeAppUseCase;
        this.d = appConfigRepository;
        this.f49721e = connectedObjectsConfigRepository;
        this.f49722f = areConfigsInCacheUseCase;
        this.g = clearAllConfigUseCase;
        this.f49723h = areCachedConfigsUpToDateUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:49:0x0103  */
    /* JADX WARN: Code duplicated, block: B:53:0x0116 A[PHI: r0
      0x0116: PHI (r0v19 java.lang.Object) = (r0v14 java.lang.Object), (r0v1 java.lang.Object) binds: [B:51:0x0113, B:17:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:55:0x011e  */
    /* JADX WARN: Code duplicated, block: B:56:0x0121  */
    /* JADX WARN: Code duplicated, block: B:64:0x0147  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012c, code lost:
    
        if (r0 == r4) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion r18, kotlin.coroutines.jvm.internal.ContinuationImpl r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.config.SyncConfigsWithRevisionsUseCase.a(com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ConfigsVersion configsVersion, ContinuationImpl continuationImpl) throws Throwable {
        SyncConfigsWithRevisionsUseCase$run$1 syncConfigsWithRevisionsUseCase$run$1;
        SyncResult syncResult;
        if (continuationImpl instanceof SyncConfigsWithRevisionsUseCase$run$1) {
            syncConfigsWithRevisionsUseCase$run$1 = (SyncConfigsWithRevisionsUseCase$run$1) continuationImpl;
            int i2 = syncConfigsWithRevisionsUseCase$run$1.f49735e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                syncConfigsWithRevisionsUseCase$run$1.f49735e = i2 - Integer.MIN_VALUE;
            } else {
                syncConfigsWithRevisionsUseCase$run$1 = new SyncConfigsWithRevisionsUseCase$run$1(this, continuationImpl);
            }
        } else {
            syncConfigsWithRevisionsUseCase$run$1 = new SyncConfigsWithRevisionsUseCase$run$1(this, continuationImpl);
        }
        Object objA = syncConfigsWithRevisionsUseCase$run$1.f49734c;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = syncConfigsWithRevisionsUseCase$run$1.f49735e;
        if (i3 == 0) {
            ResultKt.b(objA);
            syncConfigsWithRevisionsUseCase$run$1.f49735e = 1;
            objA = a(configsVersion, syncConfigsWithRevisionsUseCase$run$1);
            if (objA != obj) {
            }
            return obj;
        }
        if (i3 == 1) {
            ResultKt.b(objA);
        } else {
            if (i3 != 2) {
                if (i3 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                SyncResult syncResult2 = syncConfigsWithRevisionsUseCase$run$1.f49733b;
                ResultKt.b(objA);
                return syncResult2;
            }
            syncResult = syncConfigsWithRevisionsUseCase$run$1.f49733b;
            ResultKt.b(objA);
            Object obj2 = ((Result) objA).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        return syncResult;
        SyncResult syncResult3 = (SyncResult) objA;
        boolean zC = Intrinsics.c(syncResult3, SyncResult.Success.f49726a);
        Logger logger = this.f49718a;
        if (zC) {
            logger.getClass();
            syncConfigsWithRevisionsUseCase$run$1.f49733b = syncResult3;
            syncConfigsWithRevisionsUseCase$run$1.f49735e = 2;
            if (this.f49720c.b(syncConfigsWithRevisionsUseCase$run$1) != obj) {
                syncResult = syncResult3;
                Result.Companion companion2 = Result.INSTANCE;
                return syncResult;
            }
        } else {
            if (!(syncResult3 instanceof SyncResult.Failure)) {
                v40.g();
                return null;
            }
            SyncResult.Failure failure = (SyncResult.Failure) syncResult3;
            if (failure instanceof SyncResult.Failure.DeprecatedConfigs) {
                logger.getClass();
            } else {
                if (!(failure instanceof SyncResult.Failure.NoConfigs)) {
                    v40.g();
                    return null;
                }
                logger.getClass();
            }
            syncConfigsWithRevisionsUseCase$run$1.f49733b = syncResult3;
            syncConfigsWithRevisionsUseCase$run$1.f49735e = 3;
            if (this.g.a(syncConfigsWithRevisionsUseCase$run$1) != obj) {
                return syncResult3;
            }
        }
        return obj;
    }
}
