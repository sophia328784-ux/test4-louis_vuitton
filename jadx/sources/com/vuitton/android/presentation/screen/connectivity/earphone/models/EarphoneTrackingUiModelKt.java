package com.vuitton.android.presentation.screen.connectivity.earphone.models;

import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.tr;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EarphoneTrackingUiModelKt {
    public static final Hit a(EarphoneTrackingUiModel earphoneTrackingUiModel) {
        if (earphoneTrackingUiModel.equals(EarphoneTrackingUiModel.EarphoneGeneralScreen.f55978a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT/Earphones", null, "IoT", null, 17, null);
        }
        if (earphoneTrackingUiModel.equals(EarphoneTrackingUiModel.FaqCategoriesScreen.f55979a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT/Earphones/FAQ", null, "IoT", null, 17, null);
        }
        if (earphoneTrackingUiModel.equals(EarphoneTrackingUiModel.TutorialScreen.f55982a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/IoT/Earphones/Tutorial", null, "IoT", null, 17, null);
        }
        if (earphoneTrackingUiModel instanceof EarphoneTrackingUiModel.TutorialClickScreen) {
            return new Hit.ScreenHit.DefaultScreenHit(null, tr.g("LVPass/IoT/Earphones/Tutorial/Video/", ((EarphoneTrackingUiModel.TutorialClickScreen) earphoneTrackingUiModel).f55981a), null, "IoT", null, 17, null);
        }
        if (earphoneTrackingUiModel instanceof EarphoneTrackingUiModel.ClickOnDiscoverEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Earphones", ((EarphoneTrackingUiModel.ClickOnDiscoverEvent) earphoneTrackingUiModel).f55977a, "IoT", null, null, null, 113, null);
        }
        if (earphoneTrackingUiModel instanceof EarphoneTrackingUiModel.FaqCategoryClickEvent) {
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/IoT/Earphones/FAQ", tr.g("FAQ_", ((EarphoneTrackingUiModel.FaqCategoryClickEvent) earphoneTrackingUiModel).f55980a), "IoT", null, null, null, 113, null);
        }
        v40.g();
        return null;
    }
}
