package com.vuitton.android.presentation.screen.forceupdate;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateType;", "", "APP_VERSION", "OS_VERSION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ForceUpdateType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ForceUpdateType[] $VALUES;
    public static final ForceUpdateType APP_VERSION;
    public static final ForceUpdateType OS_VERSION;

    static {
        ForceUpdateType forceUpdateType = new ForceUpdateType("APP_VERSION", 0);
        APP_VERSION = forceUpdateType;
        ForceUpdateType forceUpdateType2 = new ForceUpdateType("OS_VERSION", 1);
        OS_VERSION = forceUpdateType2;
        ForceUpdateType[] forceUpdateTypeArr = {forceUpdateType, forceUpdateType2};
        $VALUES = forceUpdateTypeArr;
        $ENTRIES = EnumEntriesKt.a(forceUpdateTypeArr);
    }

    public static ForceUpdateType valueOf(String str) {
        return (ForceUpdateType) Enum.valueOf(ForceUpdateType.class, str);
    }

    public static ForceUpdateType[] values() {
        return (ForceUpdateType[]) $VALUES.clone();
    }
}
