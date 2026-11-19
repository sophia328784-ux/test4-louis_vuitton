package com.vuitton.android.presentation.screen.account.addressautocomplete.components;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/ManualConfirmType;", "", "CONFIRM_BUTTON_CLICKED", "ROW_CLICKED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ManualConfirmType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ManualConfirmType[] $VALUES;
    public static final ManualConfirmType CONFIRM_BUTTON_CLICKED;
    public static final ManualConfirmType ROW_CLICKED;

    static {
        ManualConfirmType manualConfirmType = new ManualConfirmType("CONFIRM_BUTTON_CLICKED", 0);
        CONFIRM_BUTTON_CLICKED = manualConfirmType;
        ManualConfirmType manualConfirmType2 = new ManualConfirmType("ROW_CLICKED", 1);
        ROW_CLICKED = manualConfirmType2;
        ManualConfirmType[] manualConfirmTypeArr = {manualConfirmType, manualConfirmType2};
        $VALUES = manualConfirmTypeArr;
        $ENTRIES = EnumEntriesKt.a(manualConfirmTypeArr);
    }

    public static ManualConfirmType valueOf(String str) {
        return (ManualConfirmType) Enum.valueOf(ManualConfirmType.class, str);
    }

    public static ManualConfirmType[] values() {
        return (ManualConfirmType[]) $VALUES.clone();
    }
}
