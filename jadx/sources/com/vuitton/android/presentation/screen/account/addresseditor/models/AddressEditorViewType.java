package com.vuitton.android.presentation.screen.account.addresseditor.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;", "", "EDIT_SECONDARY_ADDRESS", "ADD_SECONDARY_ADDRESS", "EDIT_MAIN_ADDRESS", "ADD_MAIN_ADDRESS", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddressEditorViewType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AddressEditorViewType[] $VALUES;
    public static final AddressEditorViewType ADD_MAIN_ADDRESS;
    public static final AddressEditorViewType ADD_SECONDARY_ADDRESS;
    public static final AddressEditorViewType EDIT_MAIN_ADDRESS;
    public static final AddressEditorViewType EDIT_SECONDARY_ADDRESS;

    static {
        AddressEditorViewType addressEditorViewType = new AddressEditorViewType("EDIT_SECONDARY_ADDRESS", 0);
        EDIT_SECONDARY_ADDRESS = addressEditorViewType;
        AddressEditorViewType addressEditorViewType2 = new AddressEditorViewType("ADD_SECONDARY_ADDRESS", 1);
        ADD_SECONDARY_ADDRESS = addressEditorViewType2;
        AddressEditorViewType addressEditorViewType3 = new AddressEditorViewType("EDIT_MAIN_ADDRESS", 2);
        EDIT_MAIN_ADDRESS = addressEditorViewType3;
        AddressEditorViewType addressEditorViewType4 = new AddressEditorViewType("ADD_MAIN_ADDRESS", 3);
        ADD_MAIN_ADDRESS = addressEditorViewType4;
        AddressEditorViewType[] addressEditorViewTypeArr = {addressEditorViewType, addressEditorViewType2, addressEditorViewType3, addressEditorViewType4};
        $VALUES = addressEditorViewTypeArr;
        $ENTRIES = EnumEntriesKt.a(addressEditorViewTypeArr);
    }

    public static AddressEditorViewType valueOf(String str) {
        return (AddressEditorViewType) Enum.valueOf(AddressEditorViewType.class, str);
    }

    public static AddressEditorViewType[] values() {
        return (AddressEditorViewType[]) $VALUES.clone();
    }
}
