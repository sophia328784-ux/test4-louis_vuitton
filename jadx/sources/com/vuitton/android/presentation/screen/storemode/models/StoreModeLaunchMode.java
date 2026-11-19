package com.vuitton.android.presentation.screen.storemode.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;", "", "NEW_FROM_DEEPLINK", "NEW_FROM_QRCODE_SCAN", "MAYBE_ONGOING_SESSION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoreModeLaunchMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StoreModeLaunchMode[] $VALUES;
    public static final StoreModeLaunchMode MAYBE_ONGOING_SESSION;
    public static final StoreModeLaunchMode NEW_FROM_DEEPLINK;
    public static final StoreModeLaunchMode NEW_FROM_QRCODE_SCAN;

    static {
        StoreModeLaunchMode storeModeLaunchMode = new StoreModeLaunchMode("NEW_FROM_DEEPLINK", 0);
        NEW_FROM_DEEPLINK = storeModeLaunchMode;
        StoreModeLaunchMode storeModeLaunchMode2 = new StoreModeLaunchMode("NEW_FROM_QRCODE_SCAN", 1);
        NEW_FROM_QRCODE_SCAN = storeModeLaunchMode2;
        StoreModeLaunchMode storeModeLaunchMode3 = new StoreModeLaunchMode("MAYBE_ONGOING_SESSION", 2);
        MAYBE_ONGOING_SESSION = storeModeLaunchMode3;
        StoreModeLaunchMode[] storeModeLaunchModeArr = {storeModeLaunchMode, storeModeLaunchMode2, storeModeLaunchMode3};
        $VALUES = storeModeLaunchModeArr;
        $ENTRIES = EnumEntriesKt.a(storeModeLaunchModeArr);
    }

    public static StoreModeLaunchMode valueOf(String str) {
        return (StoreModeLaunchMode) Enum.valueOf(StoreModeLaunchMode.class, str);
    }

    public static StoreModeLaunchMode[] values() {
        return (StoreModeLaunchMode[]) $VALUES.clone();
    }
}
