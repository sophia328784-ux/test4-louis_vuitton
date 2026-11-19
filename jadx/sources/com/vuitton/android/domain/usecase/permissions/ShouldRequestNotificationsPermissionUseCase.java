package com.vuitton.android.domain.usecase.permissions;

import com.vuitton.android.domain.provider.sdk.SdkVersionProvider;
import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.android.domain.repository.PermissionsRepository;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.privacy.Consent;
import com.vuitton.foundation.model.domain.model.privacy.ConsentValue;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;", "", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/repository/ConsentRepository;", "consentRepository", "Lcom/vuitton/android/domain/repository/PermissionsRepository;", "permissionsRepository", "Lcom/vuitton/android/domain/provider/sdk/SdkVersionProvider;", "sdkVersionProvider", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/domain/repository/PermissionsRepository;Lcom/vuitton/android/domain/provider/sdk/SdkVersionProvider;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ShouldRequestNotificationsPermissionUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f50213a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConsentRepository f50214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PermissionsRepository f50215c;
    public final SdkVersionProvider d;

    @Inject
    public ShouldRequestNotificationsPermissionUseCase(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, ConsentRepository consentRepository, PermissionsRepository permissionsRepository, SdkVersionProvider sdkVersionProvider) {
        requireUserInAppDispatchUseCase.getClass();
        consentRepository.getClass();
        permissionsRepository.getClass();
        sdkVersionProvider.getClass();
        this.f50213a = requireUserInAppDispatchUseCase;
        this.f50214b = consentRepository;
        this.f50215c = permissionsRepository;
        this.d = sdkVersionProvider;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0044  */
    public final boolean a(boolean z, boolean z2) {
        boolean zB;
        ConsentValue consentValue;
        InAppDispatch inAppDispatchB = this.f50213a.f49912a.b();
        ConsentRepository consentRepository = this.f50214b;
        if (consentRepository.g()) {
            List listF = consentRepository.f();
            ArrayList arrayList = new ArrayList();
            for (Object obj : listF) {
                if (obj instanceof Consent.CustomisationConsent) {
                    arrayList.add(obj);
                }
            }
            Consent consent = (Consent) CollectionsKt.firstOrNull(arrayList);
            if (consent == null || (consentValue = consent.f67882a) == null) {
                zB = false;
            } else {
                zB = consentValue.b();
            }
        } else if (InAppDispatchExtKt.e(inAppDispatchB)) {
            zB = false;
        } else {
            zB = true;
        }
        return zB && !z && (!this.f50215c.getF47862a() || z2) && this.d.a();
    }
}
