package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;", "", "PN_CLICK", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EngagementPNType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EngagementPNType[] $VALUES;
    public static final EngagementPNType PN_CLICK;

    static {
        EngagementPNType engagementPNType = new EngagementPNType("PN_CLICK", 0);
        PN_CLICK = engagementPNType;
        EngagementPNType[] engagementPNTypeArr = {engagementPNType};
        $VALUES = engagementPNTypeArr;
        $ENTRIES = EnumEntriesKt.a(engagementPNTypeArr);
    }

    public static EngagementPNType valueOf(String str) {
        return (EngagementPNType) Enum.valueOf(EngagementPNType.class, str);
    }

    public static EngagementPNType[] values() {
        return (EngagementPNType[]) $VALUES.clone();
    }
}
