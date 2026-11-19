package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.common;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/TrunkSpeakerTypeEnum;", "", "GM", "PM", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TrunkSpeakerTypeEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TrunkSpeakerTypeEnum[] $VALUES;
    public static final TrunkSpeakerTypeEnum GM;
    public static final TrunkSpeakerTypeEnum PM;

    static {
        TrunkSpeakerTypeEnum trunkSpeakerTypeEnum = new TrunkSpeakerTypeEnum("GM", 0);
        GM = trunkSpeakerTypeEnum;
        TrunkSpeakerTypeEnum trunkSpeakerTypeEnum2 = new TrunkSpeakerTypeEnum("PM", 1);
        PM = trunkSpeakerTypeEnum2;
        TrunkSpeakerTypeEnum[] trunkSpeakerTypeEnumArr = {trunkSpeakerTypeEnum, trunkSpeakerTypeEnum2};
        $VALUES = trunkSpeakerTypeEnumArr;
        $ENTRIES = EnumEntriesKt.a(trunkSpeakerTypeEnumArr);
    }

    public static TrunkSpeakerTypeEnum valueOf(String str) {
        return (TrunkSpeakerTypeEnum) Enum.valueOf(TrunkSpeakerTypeEnum.class, str);
    }

    public static TrunkSpeakerTypeEnum[] values() {
        return (TrunkSpeakerTypeEnum[]) $VALUES.clone();
    }
}
