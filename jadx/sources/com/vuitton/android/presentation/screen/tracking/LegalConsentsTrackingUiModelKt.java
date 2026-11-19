package com.vuitton.android.presentation.screen.tracking;

import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LegalConsentsTrackingUiModelKt {
    public static final Hit a(LegalConsentsTrackingUiModel legalConsentsTrackingUiModel) {
        boolean z = legalConsentsTrackingUiModel instanceof LegalConsentsTrackingUiModel.LegalConsentsScreen;
        HitType.LegalConsents legalConsents = HitType.LegalConsents.f66512a;
        if (z) {
            return new Hit.ScreenHit.DefaultScreenHit(legalConsents, "legal_consents", "legal_consents", "popin_consents", CollectionsKt.O(new AdditionalProperty.ContentType(((LegalConsentsTrackingUiModel.LegalConsentsScreen) legalConsentsTrackingUiModel).f65401a.getValue())));
        }
        if (legalConsentsTrackingUiModel instanceof LegalConsentsTrackingUiModel.AcceptConsentsClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(legalConsents, "legal_consents", "consent_agree", "vto", "click", null, CollectionsKt.O(new AdditionalProperty.ContentType(((LegalConsentsTrackingUiModel.AcceptConsentsClickedEvent) legalConsentsTrackingUiModel).f65399a.getValue())), 32, null);
        }
        if (legalConsentsTrackingUiModel instanceof LegalConsentsTrackingUiModel.DeclineConsentsClickedEvent) {
            return new Hit.EventHit.DefaultEventHit(legalConsents, "legal_consents", "consent_decline", "vto", "click", null, CollectionsKt.O(new AdditionalProperty.ContentType(((LegalConsentsTrackingUiModel.DeclineConsentsClickedEvent) legalConsentsTrackingUiModel).f65400a.getValue())), 32, null);
        }
        v40.g();
        return null;
    }
}
