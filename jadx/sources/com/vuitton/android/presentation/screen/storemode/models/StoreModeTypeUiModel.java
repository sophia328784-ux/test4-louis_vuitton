package com.vuitton.android.presentation.screen.storemode.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTypeUiModel;", "", "SIMPLE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoreModeTypeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StoreModeTypeUiModel[] $VALUES;
    public static final StoreModeTypeUiModel SIMPLE;

    static {
        StoreModeTypeUiModel storeModeTypeUiModel = new StoreModeTypeUiModel("SIMPLE", 0);
        SIMPLE = storeModeTypeUiModel;
        StoreModeTypeUiModel[] storeModeTypeUiModelArr = {storeModeTypeUiModel};
        $VALUES = storeModeTypeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(storeModeTypeUiModelArr);
    }

    public static StoreModeTypeUiModel valueOf(String str) {
        return (StoreModeTypeUiModel) Enum.valueOf(StoreModeTypeUiModel.class, str);
    }

    public static StoreModeTypeUiModel[] values() {
        return (StoreModeTypeUiModel[]) $VALUES.clone();
    }
}
