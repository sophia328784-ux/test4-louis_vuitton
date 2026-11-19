package com.vuitton.android.presentation.screen.cart.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"com/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType", "", "Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;", "PACKAGING", "GIFT_MESSAGE", "SHOPPING_BAG", "SAMPLE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AutomationTagsCart$CardType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AutomationTagsCart$CardType[] $VALUES;
    public static final AutomationTagsCart$CardType GIFT_MESSAGE;
    public static final AutomationTagsCart$CardType PACKAGING;
    public static final AutomationTagsCart$CardType SAMPLE;
    public static final AutomationTagsCart$CardType SHOPPING_BAG;

    static {
        AutomationTagsCart$CardType automationTagsCart$CardType = new AutomationTagsCart$CardType("PACKAGING", 0);
        PACKAGING = automationTagsCart$CardType;
        AutomationTagsCart$CardType automationTagsCart$CardType2 = new AutomationTagsCart$CardType("GIFT_MESSAGE", 1);
        GIFT_MESSAGE = automationTagsCart$CardType2;
        AutomationTagsCart$CardType automationTagsCart$CardType3 = new AutomationTagsCart$CardType("SHOPPING_BAG", 2);
        SHOPPING_BAG = automationTagsCart$CardType3;
        AutomationTagsCart$CardType automationTagsCart$CardType4 = new AutomationTagsCart$CardType("SAMPLE", 3);
        SAMPLE = automationTagsCart$CardType4;
        AutomationTagsCart$CardType[] automationTagsCart$CardTypeArr = {automationTagsCart$CardType, automationTagsCart$CardType2, automationTagsCart$CardType3, automationTagsCart$CardType4};
        $VALUES = automationTagsCart$CardTypeArr;
        $ENTRIES = EnumEntriesKt.a(automationTagsCart$CardTypeArr);
    }

    public static AutomationTagsCart$CardType valueOf(String str) {
        return (AutomationTagsCart$CardType) Enum.valueOf(AutomationTagsCart$CardType.class, str);
    }

    public static AutomationTagsCart$CardType[] values() {
        return (AutomationTagsCart$CardType[]) $VALUES.clone();
    }
}
