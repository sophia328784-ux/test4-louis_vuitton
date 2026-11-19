package com.vuitton.android.presentation.screen.services.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServiceFeatureSlideType;", "", "OSA", "REPAIRS", "STORE_LOCATOR", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ServiceFeatureSlideType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ServiceFeatureSlideType[] $VALUES;
    public static final ServiceFeatureSlideType OSA;
    public static final ServiceFeatureSlideType REPAIRS;
    public static final ServiceFeatureSlideType STORE_LOCATOR;

    static {
        ServiceFeatureSlideType serviceFeatureSlideType = new ServiceFeatureSlideType("OSA", 0);
        OSA = serviceFeatureSlideType;
        ServiceFeatureSlideType serviceFeatureSlideType2 = new ServiceFeatureSlideType("REPAIRS", 1);
        REPAIRS = serviceFeatureSlideType2;
        ServiceFeatureSlideType serviceFeatureSlideType3 = new ServiceFeatureSlideType("STORE_LOCATOR", 2);
        STORE_LOCATOR = serviceFeatureSlideType3;
        ServiceFeatureSlideType[] serviceFeatureSlideTypeArr = {serviceFeatureSlideType, serviceFeatureSlideType2, serviceFeatureSlideType3};
        $VALUES = serviceFeatureSlideTypeArr;
        $ENTRIES = EnumEntriesKt.a(serviceFeatureSlideTypeArr);
    }

    public static ServiceFeatureSlideType valueOf(String str) {
        return (ServiceFeatureSlideType) Enum.valueOf(ServiceFeatureSlideType.class, str);
    }

    public static ServiceFeatureSlideType[] values() {
        return (ServiceFeatureSlideType[]) $VALUES.clone();
    }
}
