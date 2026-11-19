package com.vuitton.android.presentation.screen.connectivity.section;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/section/SectionType;", "", "WATCH", "WATCH_V3", "EARPHONE", "KEEPALL", "SNEAKERS", "TRUNK_SPEAKER", "HORIZON_SPEAKER", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SectionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SectionType[] $VALUES;
    public static final SectionType EARPHONE;
    public static final SectionType HORIZON_SPEAKER;
    public static final SectionType KEEPALL;
    public static final SectionType SNEAKERS;
    public static final SectionType TRUNK_SPEAKER;
    public static final SectionType WATCH;
    public static final SectionType WATCH_V3;

    static {
        SectionType sectionType = new SectionType("WATCH", 0);
        WATCH = sectionType;
        SectionType sectionType2 = new SectionType("WATCH_V3", 1);
        WATCH_V3 = sectionType2;
        SectionType sectionType3 = new SectionType("EARPHONE", 2);
        EARPHONE = sectionType3;
        SectionType sectionType4 = new SectionType("KEEPALL", 3);
        KEEPALL = sectionType4;
        SectionType sectionType5 = new SectionType("SNEAKERS", 4);
        SNEAKERS = sectionType5;
        SectionType sectionType6 = new SectionType("TRUNK_SPEAKER", 5);
        TRUNK_SPEAKER = sectionType6;
        SectionType sectionType7 = new SectionType("HORIZON_SPEAKER", 6);
        HORIZON_SPEAKER = sectionType7;
        SectionType[] sectionTypeArr = {sectionType, sectionType2, sectionType3, sectionType4, sectionType5, sectionType6, sectionType7};
        $VALUES = sectionTypeArr;
        $ENTRIES = EnumEntriesKt.a(sectionTypeArr);
    }

    public static SectionType valueOf(String str) {
        return (SectionType) Enum.valueOf(SectionType.class, str);
    }

    public static SectionType[] values() {
        return (SectionType[]) $VALUES.clone();
    }
}
