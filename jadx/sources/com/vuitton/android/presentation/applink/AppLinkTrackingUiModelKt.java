package com.vuitton.android.presentation.applink;

import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AppLinkTrackingUiModelKt {
    public static final Hit a(AppLinkTrackingUiModel appLinkTrackingUiModel) {
        if (appLinkTrackingUiModel.equals(AppLinkTrackingUiModel.SwapLocaleScreen.f50544a)) {
            return new Hit.ScreenHit.DefaultScreenHit(null, "universal_link_swap_dispatch", "universal_link_swap_dispatch", "universal_link", null, 17, null);
        }
        if (appLinkTrackingUiModel.equals(AppLinkTrackingUiModel.ChangeLocationClickedEvent.f50541a)) {
            return new Hit.EventHit.DefaultEventHit(null, "universal_link_swap_dispatch", "change_location", "universal_link", "click", null, null, 97, null);
        }
        if (appLinkTrackingUiModel.equals(AppLinkTrackingUiModel.SkipChangeLocationClickedEvent.f50543a)) {
            return new Hit.EventHit.DefaultEventHit(null, "universal_link_swap_dispatch", "skip_change_location", "universal_link", "click", null, null, 97, null);
        }
        if (appLinkTrackingUiModel.equals(AppLinkTrackingUiModel.CloseSwapLocaleClickedEvent.f50542a)) {
            return new Hit.EventHit.DefaultEventHit(null, "universal_link_swap_dispatch", "close_bottom_sheet", "universal_link", "click", null, null, 97, null);
        }
        v40.g();
        return null;
    }
}
