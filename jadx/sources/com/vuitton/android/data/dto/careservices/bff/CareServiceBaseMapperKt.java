package com.vuitton.android.data.dto.careservices.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CareServiceBaseMapperKt {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final CareServiceAction a(String str) {
        if (str == null) {
            return null;
        }
        switch (str.hashCode()) {
            case -1560195700:
                if (str.equals("cancellable")) {
                    return CareServiceAction.Cancellable;
                }
                return null;
            case -959926264:
                if (str.equals("confirmEstimate")) {
                    return CareServiceAction.ConfirmEstimate;
                }
                return null;
            case -254528102:
                if (str.equals("awaitingPayment")) {
                    return CareServiceAction.AwaitingPayment;
                }
                return null;
            case -145607404:
                if (str.equals("confirmAddress")) {
                    return CareServiceAction.ConfirmAddress;
                }
                return null;
            case 1367914743:
                if (str.equals("contactAnExpert")) {
                    return CareServiceAction.ContactAnExpert;
                }
                return null;
            case 1419928337:
                if (str.equals("trackMyShipment")) {
                    return CareServiceAction.TrackMyShipment;
                }
                return null;
            default:
                return null;
        }
    }
}
