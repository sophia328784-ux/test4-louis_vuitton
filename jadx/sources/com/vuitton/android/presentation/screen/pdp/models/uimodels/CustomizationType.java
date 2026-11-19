package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;", "", "MONOGRAM", "BEAUTY_ENGRAVING", "HOTSTAMPING", "PERFUME_ENGRAVING", "DIAMOND_ENGRAVING", "NO_CUSTOMIZATION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CustomizationType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CustomizationType[] $VALUES;
    public static final CustomizationType BEAUTY_ENGRAVING;
    public static final CustomizationType DIAMOND_ENGRAVING;
    public static final CustomizationType HOTSTAMPING;
    public static final CustomizationType MONOGRAM;
    public static final CustomizationType NO_CUSTOMIZATION;
    public static final CustomizationType PERFUME_ENGRAVING;

    static {
        CustomizationType customizationType = new CustomizationType("MONOGRAM", 0);
        MONOGRAM = customizationType;
        CustomizationType customizationType2 = new CustomizationType("BEAUTY_ENGRAVING", 1);
        BEAUTY_ENGRAVING = customizationType2;
        CustomizationType customizationType3 = new CustomizationType("HOTSTAMPING", 2);
        HOTSTAMPING = customizationType3;
        CustomizationType customizationType4 = new CustomizationType("PERFUME_ENGRAVING", 3);
        PERFUME_ENGRAVING = customizationType4;
        CustomizationType customizationType5 = new CustomizationType("DIAMOND_ENGRAVING", 4);
        DIAMOND_ENGRAVING = customizationType5;
        CustomizationType customizationType6 = new CustomizationType("NO_CUSTOMIZATION", 5);
        NO_CUSTOMIZATION = customizationType6;
        CustomizationType[] customizationTypeArr = {customizationType, customizationType2, customizationType3, customizationType4, customizationType5, customizationType6};
        $VALUES = customizationTypeArr;
        $ENTRIES = EnumEntriesKt.a(customizationTypeArr);
    }

    public static CustomizationType valueOf(String str) {
        return (CustomizationType) Enum.valueOf(CustomizationType.class, str);
    }

    public static CustomizationType[] values() {
        return (CustomizationType[]) $VALUES.clone();
    }
}
