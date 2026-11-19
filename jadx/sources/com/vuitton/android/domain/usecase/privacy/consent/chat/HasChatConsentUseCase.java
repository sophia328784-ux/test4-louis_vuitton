package com.vuitton.android.domain.usecase.privacy.consent.chat;

import com.vuitton.android.domain.repository.ConsentRepository;
import com.vuitton.foundation.model.domain.model.privacy.Consent;
import com.vuitton.foundation.model.domain.model.privacy.ConsentValue;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;", "", "Lcom/vuitton/android/domain/repository/ConsentRepository;", "consentRepository", "<init>", "(Lcom/vuitton/android/domain/repository/ConsentRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class HasChatConsentUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConsentRepository f50283a;

    @Inject
    public HasChatConsentUseCase(ConsentRepository consentRepository) {
        consentRepository.getClass();
        this.f50283a = consentRepository;
    }

    public final boolean a() {
        ConsentValue consentValue;
        List listF = this.f50283a.f();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listF) {
            if (obj instanceof Consent.ChatConsent) {
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
