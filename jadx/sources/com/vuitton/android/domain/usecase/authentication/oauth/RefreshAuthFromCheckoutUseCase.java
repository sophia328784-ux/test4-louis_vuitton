package com.vuitton.android.domain.usecase.authentication.oauth;

import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.TwistAuthRepository;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.foundation.logger.Logger;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0010B9\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;", "", "Lcom/vuitton/android/domain/repository/TwistAuthRepository;", "twistAuthRepository", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RefreshAuthFromCheckoutUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TwistAuthRepository f49396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthTokenRepository f49397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f49398c;
    public final RequireCachedAppConfigUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LVEventSender f49399e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Logger f49400f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase$Companion;", "", "", "TAG", "Ljava/lang/String;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public RefreshAuthFromCheckoutUseCase(TwistAuthRepository twistAuthRepository, AuthTokenRepository authTokenRepository, IsFeatureAvailableUseCase isFeatureAvailableUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, LVEventSender lVEventSender, Logger logger) {
        twistAuthRepository.getClass();
        authTokenRepository.getClass();
        isFeatureAvailableUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        lVEventSender.getClass();
        logger.getClass();
        this.f49396a = twistAuthRepository;
        this.f49397b = authTokenRepository;
        this.f49398c = isFeatureAvailableUseCase;
        this.d = requireCachedAppConfigUseCase;
        this.f49399e = lVEventSender;
        this.f49400f = logger;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c7 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:16:0x0033, B:63:0x011d, B:64:0x0120, B:23:0x0049, B:59:0x0105, B:26:0x0054, B:53:0x00de, B:55:0x00e4, B:29:0x0063, B:47:0x00c2, B:50:0x00c7, B:32:0x006d, B:39:0x0096, B:41:0x009e, B:43:0x00ad, B:35:0x0079), top: B:71:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:53:0x00de A[Catch: all -> 0x0038, PHI: r2 r13 r14
      0x00de: PHI (r2v11 com.vuitton.android.domain.usecase.authentication.oauth.RefreshAuthFromCheckoutUseCase) = 
      (r2v10 com.vuitton.android.domain.usecase.authentication.oauth.RefreshAuthFromCheckoutUseCase)
      (r2v16 com.vuitton.android.domain.usecase.authentication.oauth.RefreshAuthFromCheckoutUseCase)
     binds: [B:51:0x00db, B:26:0x0054] A[DONT_GENERATE, DONT_INLINE]
      0x00de: PHI (r13v9 int) = (r13v8 int), (r13v17 int) binds: [B:51:0x00db, B:26:0x0054] A[DONT_GENERATE, DONT_INLINE]
      0x00de: PHI (r14v17 java.lang.Object) = (r14v16 java.lang.Object), (r14v26 java.lang.Object) binds: [B:51:0x00db, B:26:0x0054] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0038, blocks: (B:16:0x0033, B:63:0x011d, B:64:0x0120, B:23:0x0049, B:59:0x0105, B:26:0x0054, B:53:0x00de, B:55:0x00e4, B:29:0x0063, B:47:0x00c2, B:50:0x00c7, B:32:0x006d, B:39:0x0096, B:41:0x009e, B:43:0x00ad, B:35:0x0079), top: B:71:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00e4 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:16:0x0033, B:63:0x011d, B:64:0x0120, B:23:0x0049, B:59:0x0105, B:26:0x0054, B:53:0x00de, B:55:0x00e4, B:29:0x0063, B:47:0x00c2, B:50:0x00c7, B:32:0x006d, B:39:0x0096, B:41:0x009e, B:43:0x00ad, B:35:0x0079), top: B:71:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0100  */
    /* JADX WARN: Code duplicated, block: B:58:0x0101  */
    /* JADX WARN: Code duplicated, block: B:69:0x0133  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0119, code lost:
    
        if (r2.a(r5, r0) == r1) goto L61;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instruction units count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.authentication.oauth.RefreshAuthFromCheckoutUseCase.a(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
