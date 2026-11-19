package com.vuitton.android.domain.usecase.locale;

import com.vuitton.android.domain.repository.CatalogRepository;
import com.vuitton.android.domain.usecase.analytics.AreAnalyticsInitializedUseCase;
import com.vuitton.android.domain.usecase.analytics.DisableAnalyticsUseCase;
import com.vuitton.android.domain.usecase.app.ResetAppDataUseCase;
import com.vuitton.android.domain.usecase.avatar.PreloadAvatarsCacheUseCase;
import com.vuitton.android.domain.usecase.dispatch.GetUserInAppDispatchOrNullUseCase;
import com.vuitton.android.domain.usecase.dispatch.SaveUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.SetDynamicYieldLocaleUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.ResetConsentsUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.SetPiplCbdtAgreementUseCase;
import com.vuitton.android.domain.usecase.storemode.DisableStoreModeUseCase;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bi\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;", "", "Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;", "resetAppDataUseCase", "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;", "disableStoreModeUseCase", "Lcom/vuitton/android/domain/usecase/locale/ShouldResetGdprPreferencesUseCase;", "shouldResetGdprPreferencesUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/ResetConsentsUseCase;", "resetConsentsUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;", "getUserInAppDispatchOrNullUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;", "saveUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;", "setPiplCbdtAgreementUseCase", "Lcom/vuitton/android/domain/usecase/analytics/AreAnalyticsInitializedUseCase;", "areAnalyticsInitializedUseCase", "Lcom/vuitton/android/domain/usecase/analytics/DisableAnalyticsUseCase;", "disableAnalyticsUseCase", "Lcom/vuitton/android/domain/repository/CatalogRepository;", "catalogRepository", "Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;", "preloadAvatarsCacheUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldLocaleUseCase;", "setDynamicYieldLocaleUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/locale/ShouldResetGdprPreferencesUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/ResetConsentsUseCase;Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/usecase/analytics/AreAnalyticsInitializedUseCase;Lcom/vuitton/android/domain/usecase/analytics/DisableAnalyticsUseCase;Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldLocaleUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReactToInAppDispatchChangeUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ResetAppDataUseCase f50129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DisableStoreModeUseCase f50130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShouldResetGdprPreferencesUseCase f50131c;
    public final ResetConsentsUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetUserInAppDispatchOrNullUseCase f50132e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SaveUserInAppDispatchUseCase f50133f;
    public final SetPiplCbdtAgreementUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AreAnalyticsInitializedUseCase f50134h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DisableAnalyticsUseCase f50135i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CatalogRepository f50136j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final PreloadAvatarsCacheUseCase f50137k;
    public final SetDynamicYieldLocaleUseCase l;

    @Inject
    public ReactToInAppDispatchChangeUseCase(ResetAppDataUseCase resetAppDataUseCase, DisableStoreModeUseCase disableStoreModeUseCase, ShouldResetGdprPreferencesUseCase shouldResetGdprPreferencesUseCase, ResetConsentsUseCase resetConsentsUseCase, GetUserInAppDispatchOrNullUseCase getUserInAppDispatchOrNullUseCase, SaveUserInAppDispatchUseCase saveUserInAppDispatchUseCase, SetPiplCbdtAgreementUseCase setPiplCbdtAgreementUseCase, AreAnalyticsInitializedUseCase areAnalyticsInitializedUseCase, DisableAnalyticsUseCase disableAnalyticsUseCase, CatalogRepository catalogRepository, PreloadAvatarsCacheUseCase preloadAvatarsCacheUseCase, SetDynamicYieldLocaleUseCase setDynamicYieldLocaleUseCase) {
        resetAppDataUseCase.getClass();
        disableStoreModeUseCase.getClass();
        shouldResetGdprPreferencesUseCase.getClass();
        resetConsentsUseCase.getClass();
        getUserInAppDispatchOrNullUseCase.getClass();
        saveUserInAppDispatchUseCase.getClass();
        setPiplCbdtAgreementUseCase.getClass();
        areAnalyticsInitializedUseCase.getClass();
        disableAnalyticsUseCase.getClass();
        catalogRepository.getClass();
        preloadAvatarsCacheUseCase.getClass();
        setDynamicYieldLocaleUseCase.getClass();
        this.f50129a = resetAppDataUseCase;
        this.f50130b = disableStoreModeUseCase;
        this.f50131c = shouldResetGdprPreferencesUseCase;
        this.d = resetConsentsUseCase;
        this.f50132e = getUserInAppDispatchOrNullUseCase;
        this.f50133f = saveUserInAppDispatchUseCase;
        this.g = setPiplCbdtAgreementUseCase;
        this.f50134h = areAnalyticsInitializedUseCase;
        this.f50135i = disableAnalyticsUseCase;
        this.f50136j = catalogRepository;
        this.f50137k = preloadAvatarsCacheUseCase;
        this.l = setDynamicYieldLocaleUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:42:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d5 A[PHI: r6 r7
      0x00d5: PHI (r6v8 com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch) = 
      (r6v0 com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch)
      (r6v4 com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch)
      (r6v4 com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch)
      (r6v11 com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch)
     binds: [B:21:0x0077, B:38:0x00b8, B:43:0x00d1, B:18:0x0058] A[DONT_GENERATE, DONT_INLINE]
      0x00d5: PHI (r7v4 boolean) = (r7v0 boolean), (r7v1 boolean), (r7v1 boolean), (r7v7 boolean) binds: [B:21:0x0077, B:38:0x00b8, B:43:0x00d1, B:18:0x0058] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:48:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fc A[PHI: r6 r7
      0x00fc: PHI (r6v14 boolean) = (r6v12 boolean), (r6v15 boolean) binds: [B:50:0x00f9, B:16:0x0041] A[DONT_GENERATE, DONT_INLINE]
      0x00fc: PHI (r7v10 com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch) = 
      (r7v8 com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch)
      (r7v11 com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch)
     binds: [B:50:0x00f9, B:16:0x0041] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:55:0x010e A[PHI: r6 r7
      0x010e: PHI (r6v16 boolean) = (r6v14 boolean), (r6v17 boolean) binds: [B:53:0x010b, B:15:0x0038] A[DONT_GENERATE, DONT_INLINE]
      0x010e: PHI (r7v12 com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch) = 
      (r7v10 com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch)
      (r7v14 com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch)
     binds: [B:53:0x010b, B:15:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:57:0x011e  */
    /* JADX WARN: Code duplicated, block: B:61:0x013c A[Catch: all -> 0x0153, PHI: r6
      0x013c: PHI (r6v18 boolean) = (r6v16 boolean), (r6v20 boolean) binds: [B:59:0x0139, B:14:0x0031] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {all -> 0x0153, blocks: (B:12:0x0028, B:64:0x0150, B:61:0x013c), top: B:70:0x001f }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x014d, code lost:
    
        if (r5.a(r0) == r1) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r6, boolean r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.locale.ReactToInAppDispatchChangeUseCase.a(com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
