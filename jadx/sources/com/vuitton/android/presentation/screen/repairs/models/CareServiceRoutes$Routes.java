package com.vuitton.android.presentation.screen.repairs.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"com/vuitton/android/presentation/screen/repairs/models/CareServiceRoutes$Routes", "", "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceRoutes$Routes;", "REPAIR_LIST", "REPAIR_CREATE", "REPAIR_DETAIL", "PRELIMINARY_ASSESSMENT_CONFIRMATION", "ADDRESS_CONFIRMATION", "PAYMENT_CONFIRMATION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CareServiceRoutes$Routes {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CareServiceRoutes$Routes[] $VALUES;
    public static final CareServiceRoutes$Routes ADDRESS_CONFIRMATION;
    public static final CareServiceRoutes$Routes PAYMENT_CONFIRMATION;
    public static final CareServiceRoutes$Routes PRELIMINARY_ASSESSMENT_CONFIRMATION;
    public static final CareServiceRoutes$Routes REPAIR_CREATE;
    public static final CareServiceRoutes$Routes REPAIR_DETAIL;
    public static final CareServiceRoutes$Routes REPAIR_LIST;

    static {
        CareServiceRoutes$Routes careServiceRoutes$Routes = new CareServiceRoutes$Routes("REPAIR_LIST", 0);
        REPAIR_LIST = careServiceRoutes$Routes;
        CareServiceRoutes$Routes careServiceRoutes$Routes2 = new CareServiceRoutes$Routes("REPAIR_CREATE", 1);
        REPAIR_CREATE = careServiceRoutes$Routes2;
        CareServiceRoutes$Routes careServiceRoutes$Routes3 = new CareServiceRoutes$Routes("REPAIR_DETAIL", 2);
        REPAIR_DETAIL = careServiceRoutes$Routes3;
        CareServiceRoutes$Routes careServiceRoutes$Routes4 = new CareServiceRoutes$Routes("PRELIMINARY_ASSESSMENT_CONFIRMATION", 3);
        PRELIMINARY_ASSESSMENT_CONFIRMATION = careServiceRoutes$Routes4;
        CareServiceRoutes$Routes careServiceRoutes$Routes5 = new CareServiceRoutes$Routes("ADDRESS_CONFIRMATION", 4);
        ADDRESS_CONFIRMATION = careServiceRoutes$Routes5;
        CareServiceRoutes$Routes careServiceRoutes$Routes6 = new CareServiceRoutes$Routes("PAYMENT_CONFIRMATION", 5);
        PAYMENT_CONFIRMATION = careServiceRoutes$Routes6;
        CareServiceRoutes$Routes[] careServiceRoutes$RoutesArr = {careServiceRoutes$Routes, careServiceRoutes$Routes2, careServiceRoutes$Routes3, careServiceRoutes$Routes4, careServiceRoutes$Routes5, careServiceRoutes$Routes6};
        $VALUES = careServiceRoutes$RoutesArr;
        $ENTRIES = EnumEntriesKt.a(careServiceRoutes$RoutesArr);
    }

    public static CareServiceRoutes$Routes valueOf(String str) {
        return (CareServiceRoutes$Routes) Enum.valueOf(CareServiceRoutes$Routes.class, str);
    }

    public static CareServiceRoutes$Routes[] values() {
        return (CareServiceRoutes$Routes[]) $VALUES.clone();
    }
}
