package com.vuitton.android.domain.usecase.app;

import com.vuitton.android.domain.repository.AppInitializationRepository;
import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.android.domain.repository.LoggerRepository;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.analytics.InitAnalyticsUseCase;
import com.vuitton.android.domain.usecase.analytics.SendAbTestAnalyticsUseCase;
import com.vuitton.android.domain.usecase.analytics.UpdateContactIdUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.InitializePrivacyRelatedToolsUseCase;
import com.vuitton.android.domain.usecase.authentication.CreateATGSessionUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateGuestUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.GetAuthTokenUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.InitPerfectCorpUseCase;
import com.vuitton.android.domain.usecase.privacy.UpdateAnalyticsConsentUseCase;
import com.vuitton.android.domain.usecase.wishlist.RefreshWishlistUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0091\u0001\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%¨\u0006&"}, d2 = {"Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;", "", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;", "updateContactIdUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;", "initializePrivacyRelatedToolsUseCase", "Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;", "updateAnalyticsConsentUseCase", "Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;", "initAnalyticsUseCase", "Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;", "sendAbTestAnalyticsUseCase", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/repository/LoggerRepository;", "loggerRepository", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;", "getAuthTokenUseCase", "Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;", "authenticateGuestUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;", "refreshWishlistUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;", "getConnectedObjectListUseCase", "Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;", "createATGSessionUseCase", "Lcom/vuitton/android/domain/repository/AppInitializationRepository;", "appInitializationRepository", "Lcom/vuitton/android/domain/repository/CatalogRepository;", "catalogRepository", "Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;", "initPerfectCorpUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/repository/LoggerRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;Lcom/vuitton/android/domain/repository/AppInitializationRepository;Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InitializeAppUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f49231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UpdateContactIdUseCase f49232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InitializePrivacyRelatedToolsUseCase f49233c;
    public final UpdateAnalyticsConsentUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InitAnalyticsUseCase f49234e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SendAbTestAnalyticsUseCase f49235f;
    public final UserSessionService g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LoggerRepository f49236h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f49237i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetAuthTokenUseCase f49238j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AuthenticateGuestUseCase f49239k;
    public final RefreshWishlistUseCase l;
    public final GetConnectedObjectListUseCase m;
    public final CreateATGSessionUseCase n;
    public final AppInitializationRepository o;
    public final CatalogRepository p;
    public final InitPerfectCorpUseCase q;

    @Inject
    public InitializeAppUseCase(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, UpdateContactIdUseCase updateContactIdUseCase, InitializePrivacyRelatedToolsUseCase initializePrivacyRelatedToolsUseCase, UpdateAnalyticsConsentUseCase updateAnalyticsConsentUseCase, InitAnalyticsUseCase initAnalyticsUseCase, SendAbTestAnalyticsUseCase sendAbTestAnalyticsUseCase, UserSessionService userSessionService, LoggerRepository loggerRepository, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetAuthTokenUseCase getAuthTokenUseCase, AuthenticateGuestUseCase authenticateGuestUseCase, RefreshWishlistUseCase refreshWishlistUseCase, GetConnectedObjectListUseCase getConnectedObjectListUseCase, CreateATGSessionUseCase createATGSessionUseCase, AppInitializationRepository appInitializationRepository, CatalogRepository catalogRepository, InitPerfectCorpUseCase initPerfectCorpUseCase) {
        requireUserInAppDispatchUseCase.getClass();
        updateContactIdUseCase.getClass();
        initializePrivacyRelatedToolsUseCase.getClass();
        updateAnalyticsConsentUseCase.getClass();
        initAnalyticsUseCase.getClass();
        sendAbTestAnalyticsUseCase.getClass();
        userSessionService.getClass();
        loggerRepository.getClass();
        isFeatureAvailableUseCase.getClass();
        getAuthTokenUseCase.getClass();
        authenticateGuestUseCase.getClass();
        refreshWishlistUseCase.getClass();
        getConnectedObjectListUseCase.getClass();
        createATGSessionUseCase.getClass();
        appInitializationRepository.getClass();
        catalogRepository.getClass();
        initPerfectCorpUseCase.getClass();
        this.f49231a = requireUserInAppDispatchUseCase;
        this.f49232b = updateContactIdUseCase;
        this.f49233c = initializePrivacyRelatedToolsUseCase;
        this.d = updateAnalyticsConsentUseCase;
        this.f49234e = initAnalyticsUseCase;
        this.f49235f = sendAbTestAnalyticsUseCase;
        this.g = userSessionService;
        this.f49236h = loggerRepository;
        this.f49237i = isFeatureAvailableUseCase;
        this.f49238j = getAuthTokenUseCase;
        this.f49239k = authenticateGuestUseCase;
        this.l = refreshWishlistUseCase;
        this.m = getConnectedObjectListUseCase;
        this.n = createATGSessionUseCase;
        this.o = appInitializationRepository;
        this.p = catalogRepository;
        this.q = initPerfectCorpUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0075  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007d, code lost:
    
        if (r6.f49239k.a(r0) == r1) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.vuitton.android.domain.usecase.app.InitializeAppUseCase$guestAuthIfNeeded$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.domain.usecase.app.InitializeAppUseCase$guestAuthIfNeeded$1 r0 = (com.vuitton.android.domain.usecase.app.InitializeAppUseCase$guestAuthIfNeeded$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.domain.usecase.app.InitializeAppUseCase$guestAuthIfNeeded$1 r0 = new com.vuitton.android.domain.usecase.app.InitializeAppUseCase$guestAuthIfNeeded$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f49240b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L41
            if (r2 == r5) goto L3d
            if (r2 == r4) goto L39
            if (r2 != r3) goto L32
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            r7.getClass()
            goto L80
        L32:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L39:
            kotlin.ResultKt.b(r7)
            goto L6b
        L3d:
            kotlin.ResultKt.b(r7)
            goto L56
        L41:
            kotlin.ResultKt.b(r7)
            com.vuitton.foundation.model.domain.model.sync.Feature r7 = com.vuitton.foundation.model.domain.model.sync.Feature.TWIST
            com.vuitton.foundation.model.domain.model.sync.Feature[] r7 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r7}
            r0.d = r5
            r2 = 0
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r5 = r6.f49237i
            java.lang.Object r7 = r5.c(r7, r2, r0)
            if (r7 != r1) goto L56
            goto L7f
        L56:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L83
            r0.d = r4
            com.vuitton.android.domain.usecase.authentication.oauth.GetAuthTokenUseCase r7 = r6.f49238j
            com.vuitton.android.domain.repository.AuthTokenRepository r7 = r7.f49370a
            java.lang.Object r7 = r7.d(r0)
            if (r7 != r1) goto L6b
            goto L7f
        L6b:
            com.vuitton.foundation.model.domain.model.authentication.AuthToken r7 = (com.vuitton.foundation.model.domain.model.authentication.AuthToken) r7
            com.vuitton.foundation.model.domain.model.authentication.AuthToken$None r2 = com.vuitton.foundation.model.domain.model.authentication.AuthToken.None.f66591a
            boolean r7 = kotlin.jvm.internal.Intrinsics.c(r7, r2)
            if (r7 == 0) goto L83
            r0.d = r3
            com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateGuestUseCase r6 = r6.f49239k
            java.lang.Object r6 = r6.a(r0)
            if (r6 != r1) goto L80
        L7f:
            return r1
        L80:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        L83:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.app.InitializeAppUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0096 A[PHI: r12
      0x0096: PHI (r12v9 java.lang.Object) = (r12v8 java.lang.Object), (r12v1 java.lang.Object) binds: [B:26:0x0092, B:20:0x0061] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:30:0x009e  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:45:0x00df  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:52:0x010c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0120  */
    /* JADX WARN: Code duplicated, block: B:60:0x0129  */
    /* JADX WARN: Code duplicated, block: B:64:0x013f  */
    /* JADX WARN: Code duplicated, block: B:69:0x0153  */
    /* JADX WARN: Code duplicated, block: B:72:0x015c  */
    /* JADX WARN: Code duplicated, block: B:74:0x0161  */
    /* JADX WARN: Code duplicated, block: B:78:0x016f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:80:0x0175  */
    /* JADX WARN: Code duplicated, block: B:83:0x0187  */
    /* JADX WARN: Code duplicated, block: B:89:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0106 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x0147 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0139 A[SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0191, code lost:
    
        if (r11.l.a(r0) == r1) goto L85;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instruction units count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.app.InitializeAppUseCase.b(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
