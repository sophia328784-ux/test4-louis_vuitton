package com.vuitton.android.presentation.screen.services;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"com/vuitton/android/presentation/screen/services/ServicesRoutes$Routes", "", "Lcom/vuitton/android/presentation/screen/services/ServicesRoutes$Routes;", "SERVICES", "REDIRECTION_REPAIR_SECTION", "REDIRECTION_REPAIR_CREATE", "REDIRECTION_REPAIR_DETAIL", "REDIRECTION_OSA", "REDIRECTION_OSA_MY_APPOINTMENTS", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ServicesRoutes$Routes {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ServicesRoutes$Routes[] $VALUES;
    public static final ServicesRoutes$Routes REDIRECTION_OSA;
    public static final ServicesRoutes$Routes REDIRECTION_OSA_MY_APPOINTMENTS;
    public static final ServicesRoutes$Routes REDIRECTION_REPAIR_CREATE;
    public static final ServicesRoutes$Routes REDIRECTION_REPAIR_DETAIL;
    public static final ServicesRoutes$Routes REDIRECTION_REPAIR_SECTION;
    public static final ServicesRoutes$Routes SERVICES;

    static {
        ServicesRoutes$Routes servicesRoutes$Routes = new ServicesRoutes$Routes("SERVICES", 0);
        SERVICES = servicesRoutes$Routes;
        ServicesRoutes$Routes servicesRoutes$Routes2 = new ServicesRoutes$Routes("REDIRECTION_REPAIR_SECTION", 1);
        REDIRECTION_REPAIR_SECTION = servicesRoutes$Routes2;
        ServicesRoutes$Routes servicesRoutes$Routes3 = new ServicesRoutes$Routes("REDIRECTION_REPAIR_CREATE", 2);
        REDIRECTION_REPAIR_CREATE = servicesRoutes$Routes3;
        ServicesRoutes$Routes servicesRoutes$Routes4 = new ServicesRoutes$Routes("REDIRECTION_REPAIR_DETAIL", 3);
        REDIRECTION_REPAIR_DETAIL = servicesRoutes$Routes4;
        ServicesRoutes$Routes servicesRoutes$Routes5 = new ServicesRoutes$Routes("REDIRECTION_OSA", 4);
        REDIRECTION_OSA = servicesRoutes$Routes5;
        ServicesRoutes$Routes servicesRoutes$Routes6 = new ServicesRoutes$Routes("REDIRECTION_OSA_MY_APPOINTMENTS", 5);
        REDIRECTION_OSA_MY_APPOINTMENTS = servicesRoutes$Routes6;
        ServicesRoutes$Routes[] servicesRoutes$RoutesArr = {servicesRoutes$Routes, servicesRoutes$Routes2, servicesRoutes$Routes3, servicesRoutes$Routes4, servicesRoutes$Routes5, servicesRoutes$Routes6};
        $VALUES = servicesRoutes$RoutesArr;
        $ENTRIES = EnumEntriesKt.a(servicesRoutes$RoutesArr);
    }

    public static ServicesRoutes$Routes valueOf(String str) {
        return (ServicesRoutes$Routes) Enum.valueOf(ServicesRoutes$Routes.class, str);
    }

    public static ServicesRoutes$Routes[] values() {
        return (ServicesRoutes$Routes[]) $VALUES.clone();
    }
}
