package com.vuitton.android.presentation.screen.pdp.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;", "", "FIND_IN_STORE", "FIND_A_STORE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoreButtonType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StoreButtonType[] $VALUES;
    public static final StoreButtonType FIND_A_STORE;
    public static final StoreButtonType FIND_IN_STORE;

    static {
        StoreButtonType storeButtonType = new StoreButtonType("FIND_IN_STORE", 0);
        FIND_IN_STORE = storeButtonType;
        StoreButtonType storeButtonType2 = new StoreButtonType("FIND_A_STORE", 1);
        FIND_A_STORE = storeButtonType2;
        StoreButtonType[] storeButtonTypeArr = {storeButtonType, storeButtonType2};
        $VALUES = storeButtonTypeArr;
        $ENTRIES = EnumEntriesKt.a(storeButtonTypeArr);
    }

    public static StoreButtonType valueOf(String str) {
        return (StoreButtonType) Enum.valueOf(StoreButtonType.class, str);
    }

    public static StoreButtonType[] values() {
        return (StoreButtonType[]) $VALUES.clone();
    }
}
