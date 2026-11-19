package com.vuitton.foundation.model.domain.model.careservices.bff;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;", "", "Cancellable", "ConfirmEstimate", "ConfirmAddress", "AwaitingPayment", "TrackMyShipment", "ContactAnExpert", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CareServiceAction {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CareServiceAction[] $VALUES;
    public static final CareServiceAction AwaitingPayment;
    public static final CareServiceAction Cancellable;
    public static final CareServiceAction ConfirmAddress;
    public static final CareServiceAction ConfirmEstimate;
    public static final CareServiceAction ContactAnExpert;
    public static final CareServiceAction TrackMyShipment;

    static {
        CareServiceAction careServiceAction = new CareServiceAction("Cancellable", 0);
        Cancellable = careServiceAction;
        CareServiceAction careServiceAction2 = new CareServiceAction("ConfirmEstimate", 1);
        ConfirmEstimate = careServiceAction2;
        CareServiceAction careServiceAction3 = new CareServiceAction("ConfirmAddress", 2);
        ConfirmAddress = careServiceAction3;
        CareServiceAction careServiceAction4 = new CareServiceAction("AwaitingPayment", 3);
        AwaitingPayment = careServiceAction4;
        CareServiceAction careServiceAction5 = new CareServiceAction("TrackMyShipment", 4);
        TrackMyShipment = careServiceAction5;
        CareServiceAction careServiceAction6 = new CareServiceAction("ContactAnExpert", 5);
        ContactAnExpert = careServiceAction6;
        CareServiceAction[] careServiceActionArr = {careServiceAction, careServiceAction2, careServiceAction3, careServiceAction4, careServiceAction5, careServiceAction6};
        $VALUES = careServiceActionArr;
        $ENTRIES = EnumEntriesKt.a(careServiceActionArr);
    }

    public static CareServiceAction valueOf(String str) {
        return (CareServiceAction) Enum.valueOf(CareServiceAction.class, str);
    }

    public static CareServiceAction[] values() {
        return (CareServiceAction[]) $VALUES.clone();
    }
}
