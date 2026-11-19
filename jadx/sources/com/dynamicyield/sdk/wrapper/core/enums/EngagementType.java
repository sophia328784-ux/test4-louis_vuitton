package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;", "", "CLICK", "SLOT_CLICK", "IMP", "SLOT_IMP", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EngagementType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EngagementType[] $VALUES;
    public static final EngagementType CLICK;
    public static final EngagementType IMP;
    public static final EngagementType SLOT_CLICK;
    public static final EngagementType SLOT_IMP;

    static {
        EngagementType engagementType = new EngagementType("CLICK", 0);
        CLICK = engagementType;
        EngagementType engagementType2 = new EngagementType("SLOT_CLICK", 1);
        SLOT_CLICK = engagementType2;
        EngagementType engagementType3 = new EngagementType("IMP", 2);
        IMP = engagementType3;
        EngagementType engagementType4 = new EngagementType("SLOT_IMP", 3);
        SLOT_IMP = engagementType4;
        EngagementType[] engagementTypeArr = {engagementType, engagementType2, engagementType3, engagementType4};
        $VALUES = engagementTypeArr;
        $ENTRIES = EnumEntriesKt.a(engagementTypeArr);
    }

    public static EngagementType valueOf(String str) {
        return (EngagementType) Enum.valueOf(EngagementType.class, str);
    }

    public static EngagementType[] values() {
        return (EngagementType[]) $VALUES.clone();
    }
}
