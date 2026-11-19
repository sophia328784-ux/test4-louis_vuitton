package com.vuitton.android.domain.usecase.privacy;

import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.privacy.Consent;
import com.vuitton.foundation.model.domain.model.privacy.ConsentValue;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;", "", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/repository/ConsentRepository;", "consentRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/repository/ConsentRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetConsentForCustomizationUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f50255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConsentRepository f50256b;

    @Inject
    public GetConsentForCustomizationUseCase(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, ConsentRepository consentRepository) {
        requireUserInAppDispatchUseCase.getClass();
        consentRepository.getClass();
        this.f50255a = requireUserInAppDispatchUseCase;
        this.f50256b = consentRepository;
    }

    public final boolean a() {
        ConsentValue consentValue;
        ConsentRepository consentRepository = this.f50256b;
        if (!consentRepository.g()) {
            return !InAppDispatchExtKt.e(this.f50255a.f49912a.b());
        }
        List listF = consentRepository.f();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listF) {
            if (obj instanceof Consent.CustomisationConsent) {
                arrayList.add(obj);
            }
        }
        Consent consent = (Consent) CollectionsKt.firstOrNull(arrayList);
        if (consent == null || (consentValue = consent.f67882a) == null) {
            return false;
        }
        return consentValue.b();
    }
}
