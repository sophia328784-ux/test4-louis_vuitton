package com.vuitton.android.presentation.screen.catalog.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/models/PlpEntryType;", "", "Classic", "Thematic", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PlpEntryType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PlpEntryType[] $VALUES;
    public static final PlpEntryType Classic;
    public static final PlpEntryType Thematic;

    static {
        PlpEntryType plpEntryType = new PlpEntryType("Classic", 0);
        Classic = plpEntryType;
        PlpEntryType plpEntryType2 = new PlpEntryType("Thematic", 1);
        Thematic = plpEntryType2;
        PlpEntryType[] plpEntryTypeArr = {plpEntryType, plpEntryType2};
        $VALUES = plpEntryTypeArr;
        $ENTRIES = EnumEntriesKt.a(plpEntryTypeArr);
    }

    public static PlpEntryType valueOf(String str) {
        return (PlpEntryType) Enum.valueOf(PlpEntryType.class, str);
    }

    public static PlpEntryType[] values() {
        return (PlpEntryType[]) $VALUES.clone();
    }
}
