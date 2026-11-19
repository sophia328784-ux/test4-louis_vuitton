package com.vuitton.foundation.model.domain.model.account.orders;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;", "", "CLICK_COLLECT", "STANDARD", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ShippingType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ShippingType[] $VALUES;
    public static final ShippingType CLICK_COLLECT;
    public static final ShippingType STANDARD;

    static {
        ShippingType shippingType = new ShippingType("CLICK_COLLECT", 0);
        CLICK_COLLECT = shippingType;
        ShippingType shippingType2 = new ShippingType("STANDARD", 1);
        STANDARD = shippingType2;
        ShippingType[] shippingTypeArr = {shippingType, shippingType2};
        $VALUES = shippingTypeArr;
        $ENTRIES = EnumEntriesKt.a(shippingTypeArr);
    }

    public static ShippingType valueOf(String str) {
        return (ShippingType) Enum.valueOf(ShippingType.class, str);
    }

    public static ShippingType[] values() {
        return (ShippingType[]) $VALUES.clone();
    }
}
