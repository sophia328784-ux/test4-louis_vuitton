package com.vuitton.android.presentation.screen.reinsurance.models;

import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.o60;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ReinsuranceTrackingUiModelKt {
    public static final Hit.EventHit.DefaultEventHit a(ReinsuranceTrackingUiModel reinsuranceTrackingUiModel) {
        ReinsuranceTypeUiModel reinsuranceTypeUiModel;
        String identifier;
        String str;
        ReinsuranceTypeUiModel reinsuranceTypeUiModel2;
        String identifier2;
        String str2;
        String string = null;
        if (reinsuranceTrackingUiModel instanceof ReinsuranceTrackingUiModel.OpenReinsurance) {
            ReinsuranceUiModel reinsuranceUiModel = ((ReinsuranceTrackingUiModel.OpenReinsurance) reinsuranceTrackingUiModel).f63435a;
            if (reinsuranceUiModel != null && (str2 = reinsuranceUiModel.f63437b) != null) {
                string = StringsKt.a0(str2).toString();
            }
            return new Hit.EventHit.DefaultEventHit(null, "LVPass/cart", StringsKt.J(string != null ? string : "", " ", "_"), "cart_page", "client_services_open_menu", null, (reinsuranceUiModel == null || (reinsuranceTypeUiModel2 = reinsuranceUiModel.f63436a) == null || (identifier2 = reinsuranceTypeUiModel2.getIdentifier()) == null) ? EmptyList.f71768b : o60.t(identifier2), 33, null);
        }
        if (!(reinsuranceTrackingUiModel instanceof ReinsuranceTrackingUiModel.CloseReinsurance)) {
            v40.g();
            return null;
        }
        ReinsuranceUiModel reinsuranceUiModel2 = ((ReinsuranceTrackingUiModel.CloseReinsurance) reinsuranceTrackingUiModel).f63434a;
        if (reinsuranceUiModel2 != null && (str = reinsuranceUiModel2.f63437b) != null) {
            string = StringsKt.a0(str).toString();
        }
        return new Hit.EventHit.DefaultEventHit(null, "LVPass/cart", StringsKt.J(string != null ? string : "", " ", "_"), "cart_page", "client_services_close_menu", null, (reinsuranceUiModel2 == null || (reinsuranceTypeUiModel = reinsuranceUiModel2.f63436a) == null || (identifier = reinsuranceTypeUiModel.getIdentifier()) == null) ? EmptyList.f71768b : o60.t(identifier), 33, null);
    }
}
